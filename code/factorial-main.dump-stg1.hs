sat_sAk =
    \u srt:(0,*bitmap*) []
        let {
          fact_sAb =
              sat-only \r srt:(0,*bitmap*) [ds_sA3]
                  let {
                    sat_sAn =
                        \u srt:(0,*bitmap*) []
                            let { sat_sA5 = NO_CCS GHC.Integer.Type.S#! [0];
                            } in  GHC.Num.fromInteger GHC.Num.$fNumInteger sat_sA5;
                  } in 
                    case
                        GHC.Classes.== GHC.Integer.Type.$fEqInteger ds_sA3 sat_sAn
                    of
                    wild_sAp
                    { GHC.Types.False ->
                          let {
                            sat_sAm =
                                \u srt:(0,*bitmap*) []
                                    let {
                                      sat_sAe =
                                          \u srt:(0,*bitmap*) []
                                              let {
                                                sat_sAc =
                                                    \u srt:(0,*bitmap*) []
                                                        let {
                                                          sat_sA9 = NO_CCS GHC.Integer.Type.S#! [1];
                                                        } in 
                                                          GHC.Num.fromInteger
                                                              GHC.Num.$fNumInteger sat_sA9;
