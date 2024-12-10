{-# LANGUAGE OverloadedStrings #-}

module Main where


import Data.List.Split (splitOn)
import Data.List (intercalate)

cityPaths :: String
cityPaths = "New York -> Los Angeles: 2445 miles\n\
            \Chicago -> Houston: 1084 miles\n\
            \Phoenix -> Philadelphia: 2075 miles\n\
            \San Antonio -> San Diego: 1173 miles\n\
            \Dallas -> San Jose: 1435 miles\n\
            \Austin -> Jacksonville: 1120 miles\n\
            \Fort Worth -> Columbus: 1025 miles\n\
            \Charlotte -> San Francisco: 2290 miles\n\
            \Indianapolis -> Seattle: 2280 miles\n\
            \Denver -> Washington: 1670 miles\n\
            \Boston -> El Paso: 2310 miles\n\
            \Detroit -> Nashville: 535 miles\n\
            \Memphis -> Portland: 2110 miles\n\
            \Phoenix -> Memphis: 1075 miles\n\
            \Oklahoma City -> Las Vegas: 1075 miles\n\
            \Louisville -> Baltimore: 600 miles\n\
            \Milwaukee -> Albuquerque: 1370 miles\n\
            \Tucson -> Fresno: 675 miles\n\
            \Sacramento -> Kansas City: 1600 miles\n\
            \Mesa -> Atlanta: 1800 miles\n\
            \Omaha -> Raleigh: 1200 miles\n\
            \New York -> Chicago: 790 miles\n\
            \Los Angeles -> Phoenix: 370 miles\n\
            \Houston -> San Antonio: 200 miles\n\
            \Memphis -> Boston: 210 miles\n\
            \Philadelphia -> Boston: 310 miles\n\
            \San Diego -> Las Vegas: 330 miles\n\
            \San Jose -> Seattle: 840 miles\n\
            \Jacksonville -> Atlanta: 345 miles\n\
            \Columbus -> Indianapolis: 175 miles\n\
            \San Francisco -> Portland: 635 miles\n\
            \Washington -> Baltimore: 40 miles"

fileLines :: String -> [String]
fileLines = splitOn "\n"

arrowSplitted :: String -> [String]
arrowSplitted = splitOn " -> "

extractOriginCity :: [String] -> String
extractOriginCity = head

extractDestinationCity :: [String] -> String
extractDestinationCity = last

main :: IO ()
main = putStrLn $ intercalate "\n" $ map (extractOriginCity . arrowSplitted) $ fileLines cityPaths


