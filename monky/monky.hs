{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}

import RIO
import RIO.Process
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
import Joebar.Updates

import Joebar.Util

import Joebar.I3

data App = App
  { appLogFunc :: !LogFunc
  , appProcessContext :: !ProcessContext
  }

instance HasLogFunc App where
  logFuncL = lens appLogFunc (\x y -> x { appLogFunc = y })

instance HasProcessContext App where
  processContextL = lens appProcessContext (\x y -> x { appProcessContext = y })

main :: IO ()
main = do 
  logOptions' <- logOptionsHandle stderr False
  pc <- mkDefaultProcessContext
  let logOptions = setLogUseTime True $ setLogUseLoc True logOptions'
  withLogFunc logOptions $ \logFunc -> do
    let app = App
          { appLogFunc = logFunc
          , appProcessContext = pc
          }
    
    runRIO app $ liftIO $ startLoop getI3Output
        [ pollPack 5 getUpdatesHandle
        , pollPack 1 $ getDiskHandle "1b44d7bf-6ec8-457d-8675-7ecbc3d850b7"
        , pollPack 1 getBatteryHandle
        , pollPack 1 $ getWifiHandle "wlp3s0"
        , pollPack 1 $ getTimeHandle "%a %l:%M %p"
        ]

