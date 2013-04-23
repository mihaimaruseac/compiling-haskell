Result size = 50

Main.main :: GHC.Types.IO ()
[LclIdX]
Main.main =
  GHC.Base.$
    @ GHC.Integer.Type.Integer
    @ (GHC.Types.IO ())
    (System.IO.print @ GHC.Integer.Type.Integer GHC.Show.$fShowInteger)
    ((\ (@ a_ap7)
        ($dEq_ap8 :: GHC.Classes.Eq a_ap7)
        ($dNum_ap9 :: GHC.Num.Num a_ap7) ->
        letrec {
          fact_aa0 [Occ=LoopBreaker] :: a_ap7 -> a_ap7
          [LclId]
          fact_aa0 =
            \ (ds_dzX :: a_ap7) ->
              case GHC.Classes.==
                     @ a_ap7
                     $dEq_ap8
                     ds_dzX
                     (GHC.Num.fromInteger @ a_ap7 $dNum_ap9 (__integer 0))
              of _ {
                GHC.Types.False ->
                  (\ _ ->
                     GHC.Num.*
                       @ a_ap7
                       $dNum_ap9
                       ds_dzX
                       (fact_aa0
