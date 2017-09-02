.ALIASES
V_Vin1          Vin1(+=VIN1 -=0 ) CN @GATES.SCHEMATIC1(sch_1):INS23168@SOURCE.VPWL_FILE.Normal(chips)
V_Vin2          Vin2(+=VIN2 -=0 ) CN @GATES.SCHEMATIC1(sch_1):INS23136@SOURCE.VPWL_FILE.Normal(chips)
X_M1            M1(P=VIN1 M=VOUT ) CN @GATES.SCHEMATIC1(sch_1):INS26236@GATES.VTEAM_2.Normal(chips)
X_M2            M2(P=VIN2 M=VOUT ) CN @GATES.SCHEMATIC1(sch_1):INS26278@GATES.VTEAM_2.Normal(chips)
V_Vdd           Vdd(+=VDD -=0 ) CN @GATES.SCHEMATIC1(sch_1):INS30393@SOURCE.VDC.Normal(chips)
V_Vin3          Vin3(+=VIN3 -=0 ) CN @GATES.SCHEMATIC1(sch_1):INS37048@SOURCE.VPWL_FILE.Normal(chips)
X_M7            M7(P=VIN3 M=VOUT ) CN @GATES.SCHEMATIC1(sch_1):INS39372@GATES.VTEAM_2.Normal(chips)
_    _(Vdd=VDD)
_    _(Vin1=VIN1)
_    _(Vin2=VIN2)
_    _(Vin3=VIN3)
_    _(Vout=VOUT)
.ENDALIASES
