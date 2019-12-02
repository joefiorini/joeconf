module Joebar.Time
  ( getTimeHandle
  , TimeHandle
  )
where

import RIO
import qualified RIO.Text as T

import Monky
import Monky.Modules
import Monky.Time hiding (getTimeHandle, TimeHandle)
import qualified Monky.Time as MT (getTimeHandle, TimeHandle)

import Joebar.Util

instance PollModule TimeHandle where
  getOutput (TH h) = do
    ts <- getTime h
    return
      [ MonkyPlain $ T.pack ts ]

data TimeHandle = TH MT.TimeHandle

getTimeHandle :: String -> IO TimeHandle
getTimeHandle str = do
  handle <- MT.getTimeHandle str
  return $ TH handle
