module BinaryTree
    (
    BinaryTree (..)
    ) where
        
data BinaryTree a =
    Leaf 
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show) 

insert' :: Ord a => a -> BinaryTree a -> BinaryTree a
insert' b Leaf = Node Leaf b Leaf 
insert' b (Node left label right)
  | b == label = Node left label right 
  | b < label  = Node (insert' b left) label right
  | b > label  = Node left label (insert' b right) 

-- example trees
t1 :: (Num a, Ord a) => BinaryTree a
t1 = insert' 0 Leaf 

t2 :: (Num a, Ord a) => BinaryTree a
t2 = insert' 3 t1 

t3 :: (Num a, Ord a) => BinaryTree a
t3 = insert' 5 t2 
