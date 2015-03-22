module Maths.Algebra.Semigroup

import Maths.Algebra.Magma

||| A magma where the binary operation is associative.
||| In the non-verified version this is indistinguishable
||| from a magma
|||
||| + Associativity of `op`: 
|||     forall x,y,z, x `op` (y `op` z) == (x `op` y) `op` z

class Magma a => Semigroup a where {}

magmaOpIsAssociative : Magma a => (x,y,z : a) -> x `op` (y `op` z) = (x `op` y) <+> z


-- We might want special classes of semigroups, and types of semigroup
-- elements

||| A semigroup with a unary operation star such that
|||  forall x, (star x) `op` x `op` (star x) == x
class Semigroup a => RegularSemigroup a where
  star : a -> a

class RegularSemigroup a => InverseSemigroup a where {}


