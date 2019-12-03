{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Joebar.Updates
(
getUpdatesHandle
) where

import RIO
import RIO.Process
import qualified RIO.ByteString.Lazy as BL
import qualified Data.ByteString.Lazy.Char8 as C
import qualified RIO.List as L

import Monky.Modules

data UpdatesHandle = UH

instance PollModule UpdatesHandle where
  getOutput UH = do
    (exitCode, out, err) <- readProcess "checkupdates"
    let outLines = C.split '\n' out
    let updatesCount = length outLines
    if updatesCount > 5 then
      return
        [ MonkyPlain "\61831"
        , MonkyPlain $ textDisplay updatesCount
        ]
    else
      return [ MonkyPlain "" ]

getUpdatesHandle :: IO UpdatesHandle
getUpdatesHandle = pure UH
