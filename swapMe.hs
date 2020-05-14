module SwapMe where

f :: (a,b) -> (c,d) -> ((a,b), (c,d))
f (x, y) (r,g) = ((x,y), (r,g))
