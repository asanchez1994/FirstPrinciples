module Programmers where

data OperatingSystem =
      Linux
    | BSD
    | Mac
    | Windows
    deriving (Eq,Show)

data ProgLang =
      Haskell
    | C
    | Idris
    | Python
    deriving (Eq,Show)

data Programmer = 
  Programmer { os :: OperatingSystem
             , lang :: ProgLang}
  deriving (Eq,Show)

andrew :: Programmer
andrew = Programmer
         { os = Linux
         , lang = Haskell }

allOs :: [OperatingSystem]
allOs = 
  [ Linux
  , BSD
  , Mac
  , Windows
  ] 

allLang :: [ProgLang]
allLang = 
  [ Haskell
  , C
  , Idris
  , Python
  ]

allProgrammers :: [Programmer]
allProgrammers = [Programmer { os = o, lang = p } | o <- allOs, p <- allLang]

