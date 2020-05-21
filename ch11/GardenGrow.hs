data FlowerType = Gardenia
                | Daisy
                | Rose
                | Lilac
                deriving Show

type Gardener = String

data Garden = 
  Garden Gardener FlowerType
  deriving Show 

-- sum of product types of normal form 
{- 
data Garden = Garden
            | Gardener Gardenia
            | Gardener Daisy
            | Gardener Rose
            | Gardener Lilac 
            deriving Show 
-}
