module Maths.Algebra.Quasigroup

||| A magma with unique left and right division, that is
|||   + forall a,b 
|||          a `op` (rinverse a) = b
|||          (linverse a) `op` a = b
class Magma a => Quasigroup a where
  rinverse : a -> a
  linverse : a -> a
