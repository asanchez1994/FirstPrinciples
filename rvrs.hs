module Rvrs where

main :: IO () 
main = print $ rvrs x

rvrs :: String -> String
rvrs x = 
    let curry = take 5 x 
        is    = drop 6 $ take 8 x 
        aws   = drop 9 x 
    in concat [aws, " ", is, " ", curry]

x :: String
x = "Curry is awesome"


