module Maths.Algebra.Monoid

import Maths.Algebra.Semigroup

||| A semigroup with an element identity such that
|||
||| + identity for binop
|||      forall x, x `op` identity == x
|||      forall x  identity `op` x == x
class Semigroup a => Monoid a
  identity : a
