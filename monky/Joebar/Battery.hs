module Joebar.Battery
  (getBatteryHandle)
where

import RIO
import qualified RIO.Text as T

import Monky
import Monky.Modules
import Monky.Battery hiding (BatteryHandle, getBatteryHandle', getBatteryHandle)
import qualified Monky.Battery as B (BatteryHandle, getBatteryHandle)

import Joebar.Util

data BatteryHandle = BH B.BatteryHandle

instance PollModule BatteryHandle where
  getOutput (BH battery) = do
    level <- getCurrentLevel battery
    state <- getCurrentStatus battery
    time <- getTimeLeft battery
    return [ MonkyPlain $
              T.append (getBatteryIcon level state) (getPercentString level)
           ]

getBatteryIcon :: Int -> BatteryState -> Text
getBatteryIcon percent state =
  case state of
    BatLoading -> sizeStr 26 $ getChargingIcon percent
    BatDraining -> sizeStr 14 $ getDischargingIcon percent
    BatFull -> getFullIcon

getPercentString :: Int -> Text
getPercentString percent = T.append (T.append " " $ textDisplay percent) "%"
        
getBatteryHandle :: IO BatteryHandle
getBatteryHandle = do
  battery <- B.getBatteryHandle "ADP1" "BAT0"
  return $ BH battery

getFullIcon = "\62840"

getChargingIcon :: Int -> Text
getChargingIcon a
      | a == 100 = "\62852"
      | a `elem` [90..99] = "\62858"
      | a `elem` [80..89] = "\62857"
      | a `elem` [60..79] = "\62856"
      | a `elem` [40..59] = "\62855"
      | a `elem` [30..39] = "\62854"
      | a `elem` [0..29] = "\62853"
       | otherwise = "\62851"

getDischargingIcon :: Int -> Text
getDischargingIcon a
      | a `elem` [100..110] = "\62840"
      | a `elem` [90..99] = "\62849"
      | a `elem` [80..89] = "\62848"
      | a `elem` [70..79] = "\62847"
      | a `elem` [60..69] = "\62846"
      | a `elem` [50..59] = "\62845"
      | a `elem` [40..49] = "\62844"
      | a `elem` [30..39] = "\62843"
      | a `elem` [20..29] = "\62842"
      | a `elem` [10..19] = "\62841"
      | a `elem` [0..9] = "\62850"


