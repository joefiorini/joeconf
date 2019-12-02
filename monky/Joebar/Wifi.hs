module Joebar.Wifi
(
  getWifiHandle
)
where

import RIO
import RIO.Text as T

import Monky.Wifi
import Monky.Modules

import Joebar.Util

import Data.Maybe

data WifiPollHandle = WH (Maybe String)

instance PollModule WifiPollHandle where
  getOutput (WH (Just wifi)) = pure . pure $ MonkyPlain (sizeStr 28 "\64168")
  getOutput (WH Nothing) = pure . pure $ MonkyPlain (sizeStr 28 "睊")


getWifiHandle :: String -> IO WifiPollHandle
getWifiHandle n = do
  socket <- getSSIDSocket
  interface <- getInterface socket "wlp3s0"
  wifi <- getCurrentWifi socket $ fromJust interface
  return $ WH wifi

