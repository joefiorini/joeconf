module Joebar.Wifi
(
  getWifiHandle
)
where

import RIO
import RIO.Text as T
import RIO.List as L

import Monky.Wifi
import Monky.Modules

import Joebar.Util

import Data.Maybe

data WifiPollHandle = WH SSIDSocket Interface

makeList = L.replicate 1  

instance PollModule WifiPollHandle where
  getOutput (WH socket interface) = do 
    wifi <-  getCurrentWifi socket interface 
    return $ makeList $ MonkyPlain $
      maybe (sizeStr 28 "睊") (\_ -> sizeStr 28 "\64168") wifi

getWifiHandle :: String -> IO WifiPollHandle
getWifiHandle n = do
  socket <- getSSIDSocket
  interface <- fromMaybe (error "Could not find interface") <$> getInterface socket "wlp3s0"
  return $ WH socket interface

