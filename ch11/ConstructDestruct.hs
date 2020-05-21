data GuessWhat = Chickenbutt deriving (Eq,Show)

data Id a =
  MkId a deriving (Eq,Show)

idInt :: Id Int
idInt = MkId 10 

data Product a b = 
  Product a b deriving (Eq,Show)

type Awesome = Bool
type Name = String

-- using product data constructor to make a person 
person :: Product Name Awesome
person = Product "Simon" True

data Sum a b =
    First a 
  | Second b 
  deriving (Eq, Show)

data Twitter = Twitter deriving (Eq,Show)
data AskFm - AskFm deriving (Eq,Show)

socialNetwork :: Sum Twitter AskFm
socialNetwork = First Twitter

data RecordProduct a b = 
  RecordProduct { pfirst :: a 
               , psecod :: b }
               deriving (Eq,Show)

myRecord :: RecordProduct Integer Float
myRecord = 
  RecordProduct { pfirst = 42
                , psecond = 0.00001}



