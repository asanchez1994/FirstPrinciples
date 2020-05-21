module BinaryTreeFunctions 
    (
     mapTree
   , preOrder
   , inOrder
   , postOrder
   , sumTree
   , foldTree
    ) where

import BinaryTree (BinaryTree(..))

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b 
mapTree _ Leaf = Leaf
mapTree f (Node left a right) = 
  Node (mapTree f left) (f a) (mapTree f right)

preOrder :: BinaryTree a -> [a]
preOrder Leaf = []
preOrder (Node left label right) = 
    [label] ++ (preOrder left) ++ (preOrder right)

inOrder :: BinaryTree a -> [a]
inOrder Leaf = []
inOrder (Node left label right) = 
    (inOrder left) ++ [label] ++ (inOrder right)

postOrder :: BinaryTree a -> [a]
postOrder Leaf = []
postOrder (Node left label right) = 
    (postOrder left) ++ (postOrder right) ++ [label]

sumTree :: Num a => BinaryTree a -> a
sumTree Leaf = 0
sumTree (Node left label right) =
  (sumTree left) + label + (sumTree right)

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b 
foldTree f acc Leaf = acc
foldTree f acc (Node left label right) =
  f label $ foldTree f (foldTree f acc left) right

testTree :: BinaryTree Integer
testTree = 
  Node (Node Leaf 1 Leaf)
       2
       (Node Leaf 3 Leaf)

testPreorder :: IO ()
testPreorder =
    if preOrder testTree == [2, 1, 3]
    then putStrLn "Preorder fine!"
    else putStrLn "Bad news bears."

testInorder :: IO ()
testInorder =
    if inOrder testTree == [1, 2, 3]
    then putStrLn "Inorder fine!"
    else putStrLn "Bad news bears."

testTree' :: BinaryTree Integer
testTree' = 
  Node (Node Leaf 3 Leaf)
       1
       (Node Leaf 4 Leaf)

mapExpected = 
  Node (Node Leaf 5 Leaf)
       3 
       (Node Leaf 6 Leaf) 

mapOkay = 
  if mapTree (+2) testTree' == mapExpected
  then print "yup okay!"
  else error "test failed!"
