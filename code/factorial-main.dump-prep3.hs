        }; } in
  let {
    sat_sAi :: GHC.Integer.Type.Integer
    [LclId]
    sat_sAi = GHC.Integer.Type.S# 5 } in
  fact_sAb sat_sAi

sat_sAl :: GHC.Integer.Type.Integer -> GHC.Types.IO ()
[LclId]
sat_sAl =
  System.IO.print @ GHC.Integer.Type.Integer GHC.Show.$fShowInteger

Main.main :: GHC.Types.IO ()
[GblId]
Main.main =
  GHC.Base.$
    @ GHC.Integer.Type.Integer @ (GHC.Types.IO ()) sat_sAl sat_sAk

:Main.main :: GHC.Types.IO ()
[GblId]
:Main.main = GHC.TopHandler.runMainIO @ () Main.main
