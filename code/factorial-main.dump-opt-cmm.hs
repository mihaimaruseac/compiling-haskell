sat_sAk_info()
        { Just sat_sAk_info:
                   const sat_sAk_srt-sat_sAk_info;
                   const 0;
                   const 12884901910;
        }
    cC9:
        if ((Sp + -16) < SpLim) goto cCb;
        Hp = Hp + 48;
        if (Hp > I64[BaseReg + 144]) goto cCd;
        I64[Hp - 40] = stg_CAF_BLACKHOLE_info;
        I64[Hp - 32] = I64[BaseReg + 160];
        (_cCg::I64,) = foreign "ccall"
          newCAF((BaseReg, PtrHint), (R1, PtrHint), (Hp - 40, PtrHint));
        if (_cCg::I64 == 0) goto cCe;
        goto cCf;
    cCb: jump (I64[BaseReg - 16]) ();
    cCd:
        I64[BaseReg + 192] = 48;
        goto cCb;
    cCe: jump I64[R1] ();
    cCf:
        I64[Sp - 16] = stg_bh_upd_frame_info;
        I64[Sp - 8] = Hp - 40;
        I64[Hp - 24] = fact_sAb_info;
        I64[Hp - 8] = GHC.Integer.Type.S#_con_info;
        I64[Hp + 0] = 5;
        R1 = Hp - 23;
        R2 = Hp - 7;
        Sp = Sp - 16;
        jump fact_sAb_info ();
}
