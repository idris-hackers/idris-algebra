module Maths.Algebra.Group

||| A type that is a monoid with an inverse function
|||
class Monoid a => Group a where
  inverse : a -> a
