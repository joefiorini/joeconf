{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

{-|
Module      : Monky.Outputs.I3
Description : Output module for i3-bar
Maintainer  : ongy
Stability   : testing
Portability : Linux

This module provides the output generation for i3-bar outputs.
Do note, if you are using this output, you have to compile monky
once before you are piping it to i3-bar.
GHC will output something during compilation step, this can't be avoided
by monky, this will break the output.
-}
module Joebar.I3
  ( I3Output
  , getI3Output
  )
where

import RIO
import RIO.Text (Text)
import RIO.ByteString (putStr)
import RIO.ByteString.Lazy (putStrLn)
import qualified RIO.Text as T
import qualified Data.Text.IO as T

import Monky.Modules
import Monky.Outputs.Unicode

import Control.Monad (unless)
import System.IO (stdout)

-- |Output handle for i3-bar
data I3Output = I3Output

i3Full :: Text -> Text
i3Full xs = "\"full_text\": \"" `T.append` xs `T.append` "\""

makeColor :: Text -> Text -> Text
makeColor "" _ = ""
makeColor x y = T.concat [ ", \"", y, "\": \"", x, "\"" ]

getOut :: MonkyOut -> Text
getOut (MonkyPlain t)   = i3Full t
getOut (MonkyImage _ c)   = i3Full $ T.singleton c -- Images are not supported :(
getOut (MonkyBar p)     = i3Full $ T.singleton (barChar p)
getOut (MonkyHBar p)    = i3Full $ T.pack (replicate (p `div` 10) '█') `T.append` (T.singleton $ hBarChar (p `mod` 10 * 10))
getOut (MonkyColor (f, b) o) = T.concat
  [ getOut o
  , makeColor f "color"
  , makeColor b "background"
  ]

extraProps :: IO ()
extraProps = do
  putStr ", \"separator\": false"
  putStr ", \"separator_block_width\": 1"
  putStr ", \"markup\": \"pango\""
  putStr ", \"width\": 32"

doSegment :: [MonkyOut] -> IO ()
doSegment [] = return ()
doSegment [x] = do
  putStr "{"
  T.putStr $ getOut x
  extraProps
  putStr "}"
doSegment (x:xs) = do
  putStr "{"
  T.putStr $ getOut x
  extraProps
  putStr "},"
  doSegment xs

outputLine :: [[MonkyOut]] -> IO ()
outputLine [] = error "i3-output outputLIne should never be called with an empty list"
outputLine [x] = doSegment x
outputLine (x:xs) = do
  doSegment x
  unless (null x) (putStr ",")
  outputLine xs

instance MonkyOutput I3Output where
  doLine _ xs = do
    putStr "["
    outputLine xs
    putStr "],"
    putStr "\n"
    hFlush stdout


-- | Get output handle for i3-bar. This initializes the communication on generation
getI3Output :: IO I3Output
getI3Output = do
  putStrLn "{\"version\":1}" -- Static version thingy we have to print
  putStr "[" -- Start the output lines array
  return I3Output

