TYPE SIGNATURES
    fact :: forall a. (Eq a, Num a) => a -> a
    :Main.main :: IO ()
    main :: IO ()
TYPE CONSTRUCTORS
COERCION AXIOMS
Dependent modules: []
Dependent packages: [base, ghc-prim, integer-gmp]

==================== Typechecker ====================
AbsBinds
[a]
[$dEq, $dNum]
[fact <= fact
   <>]
  fact :: forall a. (Eq a, Num a) => a -> a
  [LclId]
  fact 0 = 0
  fact n = (*) n fact ((-) n 1)
AbsBinds
[]
[]
[main <= main
   <>]
  main :: IO ()
  [LclId]
  main = ($) print fact 5
:Main.main = GHC.TopHandler.runMainIO main
