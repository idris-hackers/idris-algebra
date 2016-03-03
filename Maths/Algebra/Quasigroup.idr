module Maths.Algebra.Quasigroup

||| A magma with left and right division, that is
|||   + forall a,b 
|||          a `op` (a `qunder` b) = b
|||          (b `qover` a) `op` a = b
class Magma a => Quasigroup a where
  qunder : a -> a -> a
  qover : a -> a -> a
