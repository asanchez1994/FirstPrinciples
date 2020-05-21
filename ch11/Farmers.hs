newtype Name    = Name String deriving Show
newtype Acres   = Acres Int deriving Show 

-- Farmer is a sum type
data FarmerType = DairyFarmer
                | WheatFarmer
                | SoybeanFarmer
                deriving Show 

data Farmer = 
  Farmer Name Acres FarmerType 
  deriving Show 

isDairyFarmer :: Farmer -> Bool
isDairyFarmer (Farmer _ _ DairyFarmer) = True
isDairyFarmer _                        = False

makeFarmer :: Name -> Acres -> FarmerType -> Farmer
makeFarmer n a f = (Farmer n a f)

data FarmerRec =  
  FarmerRec { name  :: Name
            , acres :: Acres
            , fType :: FarmerType}
            deriving Show

isDairyFarmerRec :: FarmerRec -> Bool
isDairyFarmerRec farmer = 
    case fType farmer of 
         DairyFarmer -> True
         _           -> False
