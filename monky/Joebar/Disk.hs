{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}

module Joebar.Disk (
  getDiskHandle
) where

import RIO

import Monky.Modules
import Monky.Examples.Utility
import qualified Monky.Disk as D

import Joebar.Util

icon = "\63433"


data DiskHandle = DH D.DiskHandle

getDiskHandle :: String -> IO DiskHandle
getDiskHandle uuid = do 
  handle <- D.getDiskHandle uuid
  df <- D.getDiskFree handle
  return $ DH handle

instance PollModule DiskHandle where
  getOutput (DH dh) = do
    df <- D.getDiskFree dh
    if df <= 15000000000 then
      return
        [ MonkyPlain icon
        , MonkyPlain (convertUnitSI df "B")]
    else
      return $ [MonkyPlain ""]

