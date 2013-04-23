                                              } in  GHC.Num.- GHC.Num.$fNumInteger ds_sA3 sat_sAc;
                                    } in  fact_sAb sat_sAe;
                          } in  GHC.Num.* GHC.Num.$fNumInteger ds_sA3 sat_sAm;
                      GHC.Types.True ->
                          let { sat_sAo = NO_CCS GHC.Integer.Type.S#! [0];
                          } in  GHC.Num.fromInteger GHC.Num.$fNumInteger sat_sAo;
                    }; } in
        let { sat_sAi = NO_CCS GHC.Integer.Type.S#! [5];
        } in  fact_sAb sat_sAi;
SRT(sat_sAk): [GHC.Num.$fNumInteger, GHC.Integer.Type.$fEqInteger]
sat_sAl =
    \u srt:(0,*bitmap*) [] System.IO.print GHC.Show.$fShowInteger;
SRT(sat_sAl): [System.IO.print, GHC.Show.$fShowInteger]
Main.main = \u srt:(0,*bitmap*) [] GHC.Base.$ sat_sAl sat_sAk;
SRT(Main.main): [GHC.Base.$, sat_sAk, sat_sAl]
:Main.main =
    \u srt:(0,*bitmap*) [] GHC.TopHandler.runMainIO Main.main;
SRT(:Main.main): [GHC.TopHandler.runMainIO, Main.main]
