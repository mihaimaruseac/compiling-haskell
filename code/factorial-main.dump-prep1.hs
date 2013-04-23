Result size = 66

sat_sAk :: GHC.Integer.Type.Integer
[LclId]
sat_sAk =
  letrec {
    fact_sAb [Occ=LoopBreaker]
      :: GHC.Integer.Type.Integer -> GHC.Integer.Type.Integer
    [LclId, Arity=1, Unf=OtherCon []]
    fact_sAb =
      \ (ds_sA3 :: GHC.Integer.Type.Integer) ->
        let {
          sat_sAn :: GHC.Integer.Type.Integer
          [LclId]
          sat_sAn =
            let {
              sat_sA5 :: GHC.Integer.Type.Integer
              [LclId]
              sat_sA5 = GHC.Integer.Type.S# 0 } in
            GHC.Num.fromInteger
              @ GHC.Integer.Type.Integer GHC.Num.$fNumInteger sat_sA5 } in
        case GHC.Classes.==
               @ GHC.Integer.Type.Integer
               GHC.Integer.Type.$fEqInteger
               ds_sA3
               sat_sAn
        of _ {
          GHC.Types.False ->
            let {
