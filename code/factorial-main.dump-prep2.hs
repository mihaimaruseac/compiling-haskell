              sat_sAm :: GHC.Integer.Type.Integer
              [LclId]
              sat_sAm =
                let {
                  sat_sAe :: GHC.Integer.Type.Integer
                  [LclId]
                  sat_sAe =
                    let {
                      sat_sAc :: GHC.Integer.Type.Integer
                      [LclId]
                      sat_sAc =
                        let {
                          sat_sA9 :: GHC.Integer.Type.Integer
                          [LclId]
                          sat_sA9 = GHC.Integer.Type.S# 1 } in
                        GHC.Num.fromInteger
                          @ GHC.Integer.Type.Integer GHC.Num.$fNumInteger sat_sA9 } in
                    GHC.Num.-
                      @ GHC.Integer.Type.Integer GHC.Num.$fNumInteger ds_sA3 sat_sAc } in
                fact_sAb sat_sAe } in
            GHC.Num.*
              @ GHC.Integer.Type.Integer GHC.Num.$fNumInteger ds_sA3 sat_sAm;
          GHC.Types.True ->
            let {
              sat_sAo :: GHC.Integer.Type.Integer
              [LclId]
              sat_sAo = GHC.Integer.Type.S# 0 } in
            GHC.Num.fromInteger
              @ GHC.Integer.Type.Integer GHC.Num.$fNumInteger sat_sAo
