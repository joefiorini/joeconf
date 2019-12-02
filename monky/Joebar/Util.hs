{-# LANGUAGE ExistentialQuantification #-}

module Joebar.Util 
(
  sizeStr
--, JoeModule(..)
) where 

import RIO
import RIO.Text as T

import Monky.Modules

sizeStr :: Int -> Text -> Text
sizeStr size str =
  T.concat
    [ openTag
    , str
    , closeTag
    ] 
  where
    openTag =T.append (T.append "<span size=\\\"" (textDisplay $ size * 1000)) "\\\">"
    closeTag = "</span>"

--data JoeModule a = JM (IO (Maybe a))
