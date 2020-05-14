module AbsoluteValue where

abs' x  
    |x < 0     = -x
    |x > 0     = x
    |otherwise = 0 
