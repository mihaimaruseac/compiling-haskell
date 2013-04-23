 sAk_info()
         { update_frame: <none>
           label: sAk_info
           rep:HeapRep static { Thunk }
         }
     cBB:
         if (Sp - 16 < SpLim) goto cBD;
         Hp = Hp + 48;
         if (Hp > HpLim) goto cBF;
         I64[Hp - 40] = stg_CAF_BLACKHOLE_info;
         I64[Hp - 32] = CurrentTSO;
         (_cBG::I64,) = foreign "ccall"
           newCAF((BaseReg, PtrHint), (R1, PtrHint), (Hp - 40, PtrHint));
         if (_cBG::I64 == 0) goto cBH;
         goto cBI;
     cBD: jump stg_gc_enter_1 ();
     cBF:
         HpAlloc = 48;
         goto cBD;
     cBH: jump I64[R1] ();
     cBI:
         I64[Sp - 16] = stg_bh_upd_frame_info;
         I64[Sp - 8] = Hp - 40;
         I64[Hp - 24] = sAb_info;
         I64[Hp - 8] = integerzmgmp_GHCziIntegerziType_Szh_con_info;
         I64[Hp + 0] = 5;
         R1 = Hp - 23;
         R2 = Hp - 7;
         Sp = Sp - 16;
         jump sAb_info ();
 }
