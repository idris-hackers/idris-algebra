module Maths.Algebra.Magma

%access public

||| A type equipped with a binary operation
|||
class Magma a where
  op : a -> a -> a

-- magmaOpProp : Type

-- Is it possible to encode a "Magma property" as a type?

-- these types encode properties of magmas
magmaOpIsAssociative : Magma a => a -> Type
magmaOpIsAssociative = \a => (x,y,z : a) -> x `op` (y `op` z) = (x `op` y) `op` z

magmaOpIsCommutative : Magma a => a -> Type
magmaOpIsCommutative = \a => (x,y : a) -> x `op` y = y `op` x

