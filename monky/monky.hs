{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}

import RIO
import RIO.Prelude (sequence)
import qualified RIO.List as L
import qualified RIO.Text as T
import Monky
import Monky.Modules

import Data.Maybe

import Monky.Examples.CPU
import Monky.Examples.Memory
import Joebar.Time
import Joebar.Battery
import Joebar.Wifi
import Joebar.Disk

import Joebar.Util

import Joebar.I3

main :: IO ()
main = startLoop getI3Output $
      [ pollPack 1 $ getDiskHandle "1b44d7bf-6ec8-457d-8675-7ecbc3d850b7"
      , pollPack 1 $ getBatteryHandle
      , pollPack 1 $ getWifiHandle "wlp3s0"
      , pollPack 1 $ getTimeHandle "%a %l:%M %p"
      ]
  
