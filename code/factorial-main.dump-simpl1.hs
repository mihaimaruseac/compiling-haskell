Result size = 42

Main.main :: GHC.Types.IO ()
[GblId]
Main.main =
  GHC.Base.$
    @ GHC.Integer.Type.Integer
    @ (GHC.Types.IO ())
    (System.IO.print @ GHC.Integer.Type.Integer GHC.Show.$fShowInteger)
    (letrec {
       fact_aa0 [Occ=LoopBreaker]
         :: GHC.Integer.Type.Integer -> GHC.Integer.Type.Integer
       [LclId, Arity=1]
       fact_aa0 =
         \ (ds_dzX :: GHC.Integer.Type.Integer) ->
           case GHC.Classes.==
                  @ GHC.Integer.Type.Integer
                  GHC.Integer.Type.$fEqInteger
                  ds_dzX
                  (GHC.Num.fromInteger
                     @ GHC.Integer.Type.Integer GHC.Num.$fNumInteger (__integer 0))
           of _ {
             GHC.Types.False ->
               GHC.Num.*
                 @ GHC.Integer.Type.Integer
                 GHC.Num.$fNumInteger
                 ds_dzX
                 (fact_aa0
                    (GHC.Num.-
