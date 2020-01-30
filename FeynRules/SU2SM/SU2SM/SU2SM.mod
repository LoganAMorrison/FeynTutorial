(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)
(*                                                                             *)
(*         This file has been automatically generated by FeynRules.            *)
(*                                                                             *)
(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)


FR$ModelInformation={
  ModelName->"Non-Abelian Higgs",
  Authors -> {"Logan A. Morrison"},
  Version -> "1.0",
  Date -> "25. 01. 2020",
  Institutions -> {"University of California, Santa Cruz"},
  Emails -> {"loanmorr@ucsc.edu"}};

FR$ClassesTranslation={};

FR$InteractionOrderPerturbativeExpansion={};

FR$GoldstoneList={S[2], S[3]};

(*     Declared indices    *)

IndexRange[ Index[SU2W] ] = Range[ 3 ]

IndexRange[ Index[SU2D] ] = Range[ 2 ]

(*     Declared particles    *)

M$ClassesDescription = {
V[1] == {
    SelfConjugate -> True,
    PropagatorLabel -> "a",
    PropagatorType -> Sine,
    PropagatorArrow -> None,
    Mass -> 0,
    Indices -> {} },

V[2] == {
    SelfConjugate -> True,
    PropagatorLabel -> "Z",
    PropagatorType -> Sine,
    PropagatorArrow -> None,
    Mass -> MZ,
    Indices -> {} },

V[3] == {
    SelfConjugate -> False,
    QuantumNumbers -> {Q},
    PropagatorLabel -> "W",
    PropagatorType -> Sine,
    PropagatorArrow -> Forward,
    Mass -> MW,
    Indices -> {} },

U[1] == {
    SelfConjugate -> False,
    QuantumNumbers -> {GhostNumber},
    PropagatorLabel -> "uA",
    PropagatorType -> GhostDash,
    PropagatorArrow -> Forward,
    Mass -> 0,
    Indices -> {} },

U[2] == {
    SelfConjugate -> False,
    QuantumNumbers -> {GhostNumber},
    PropagatorLabel -> "uZ",
    PropagatorType -> GhostDash,
    PropagatorArrow -> Forward,
    Mass -> MZ,
    Indices -> {} },

U[31] == {
    SelfConjugate -> False,
    QuantumNumbers -> {GhostNumber, Q},
    PropagatorLabel -> "uWp",
    PropagatorType -> GhostDash,
    PropagatorArrow -> Forward,
    Mass -> MW,
    Indices -> {} },

U[32] == {
    SelfConjugate -> False,
    QuantumNumbers -> {GhostNumber, -Q},
    PropagatorLabel -> "uWm",
    PropagatorType -> GhostDash,
    PropagatorArrow -> Forward,
    Mass -> MW,
    Indices -> {} },

S[1] == {
    SelfConjugate -> True,
    PropagatorLabel -> "h",
    PropagatorType -> ScalarDash,
    PropagatorArrow -> None,
    Mass -> MH,
    Indices -> {} },

S[2] == {
    SelfConjugate -> True,
    PropagatorLabel -> "G0",
    PropagatorType -> ScalarDash,
    PropagatorArrow -> None,
    Mass -> MZ,
    Indices -> {} },

S[3] == {
    SelfConjugate -> False,
    QuantumNumbers -> {Q},
    PropagatorLabel -> "GP",
    PropagatorType -> ScalarDash,
    PropagatorArrow -> None,
    Mass -> MW,
    Indices -> {} }
}


(*        Definitions       *)

GaugeXi[ V[1] ] = GaugeXi[A];
GaugeXi[ V[2] ] = GaugeXi[Z];
GaugeXi[ V[3] ] = GaugeXi[W];
GaugeXi[ U[1] ] = GaugeXi[A];
GaugeXi[ U[2] ] = GaugeXi[Z];
GaugeXi[ U[31] ] = GaugeXi[W];
GaugeXi[ U[32] ] = GaugeXi[W];
GaugeXi[ S[1] ] = 1;
GaugeXi[ S[2] ] = GaugeXi[Z];
GaugeXi[ S[3] ] = GaugeXi[W];

MZ[ ___ ] := MZ;
MW[ ___ ] := MW;
MH[ ___ ] := MH;




(*      Couplings (calculated by FeynRules)      *)

M$CouplingMatrices = {

C[ S[2] , S[2] , S[2] , S[2] ] == {{(-6*I)*lam, 0}},

C[ S[2] , S[2] , S[3] , -S[3] ] == {{(-2*I)*lam, 0}},

C[ S[3] , S[3] , -S[3] , -S[3] ] == {{(-4*I)*lam, 0}},

C[ S[2] , S[2] , S[1] , S[1] ] == {{(-2*I)*lam, 0}},

C[ S[3] , -S[3] , S[1] , S[1] ] == {{(-2*I)*lam, 0}},

C[ S[1] , S[1] , S[1] , S[1] ] == {{(-6*I)*lam, 0}},

C[ S[1] , -U[2] , U[2] ] == {{(-I/2)*EL^2*vev*Csc[2*thetaw]^2, 0}},

C[ S[2] , S[2] , S[1] ] == {{(-2*I)*lam*vev, 0}},

C[ S[3] , -S[3] , S[1] ] == {{(-2*I)*lam*vev, 0}},

C[ S[1] , S[1] , S[1] ] == {{(-6*I)*lam*vev, 0}},

C[ S[3] , -S[3] , V[1] , V[1] ] == {{(2*I)*EL^2, 0}},

C[ S[3] , -U[31] , U[1] ] == {{((-I/2)*EL^2*vev*Csc[thetaw])/Sqrt[2], 0}},

C[ -S[3] , -U[32] , U[1] ] == {{((-I/2)*EL^2*vev*Csc[thetaw])/Sqrt[2], 0}},

C[ S[3] , -U[31] , U[2] ] == {{((-I/4)*EL^2*vev*Cos[2*thetaw]*Csc[thetaw]^2*Sec[thetaw])/Sqrt[2], 0}},

C[ S[3] , -U[2] , U[32] ] == {{((I/4)*EL^2*vev*Csc[thetaw]^2*Sec[thetaw])/Sqrt[2], 0}},

C[ -S[3] , -U[32] , U[2] ] == {{((-I/4)*EL^2*vev*Cos[2*thetaw]*Csc[thetaw]^2*Sec[thetaw])/Sqrt[2], 0}},

C[ -S[3] , -U[2] , U[31] ] == {{((I/4)*EL^2*vev*Csc[thetaw]^2*Sec[thetaw])/Sqrt[2], 0}},

C[ S[2] , -U[32] , U[32] ] == {{-(EL^2*vev*Csc[thetaw]^2)/8, 0}},

C[ S[2] , -U[31] , U[31] ] == {{(EL^2*vev*Csc[thetaw]^2)/8, 0}},

C[ S[1] , -U[32] , U[32] ] == {{(-I/8)*EL^2*vev*Csc[thetaw]^2, 0}},

C[ S[1] , -U[31] , U[31] ] == {{(-I/8)*EL^2*vev*Csc[thetaw]^2, 0}},

C[ S[3] , -S[3] , V[1] ] == {{(-I)*gc22, 0}, {I*gc22, 0}},

C[ -U[1] , U[32] , V[3] ] == {{I*gc23, 0}, {I*gc23, 0}, {0, 0}},

C[ -U[1] , U[31] , -V[3] ] == {{I*gc24, 0}, {I*gc24, 0}, {0, 0}},

C[ -U[32] , U[1] , -V[3] ] == {{I*gc25, 0}, {I*gc25, 0}, {0, 0}},

C[ -U[32] , U[32] , V[1] ] == {{I*gc26, 0}, {I*gc26, 0}, {0, 0}},

C[ -U[32] , U[32] , V[2] ] == {{I*gc27, 0}, {I*gc27, 0}, {0, 0}},

C[ -U[32] , U[2] , -V[3] ] == {{I*gc28, 0}, {I*gc28, 0}, {0, 0}},

C[ -U[31] , U[1] , V[3] ] == {{I*gc29, 0}, {I*gc29, 0}, {0, 0}},

C[ -U[31] , U[31] , V[1] ] == {{I*gc30, 0}, {I*gc30, 0}, {0, 0}},

C[ -U[31] , U[31] , V[2] ] == {{I*gc31, 0}, {I*gc31, 0}, {0, 0}},

C[ -U[31] , U[2] , V[3] ] == {{I*gc32, 0}, {I*gc32, 0}, {0, 0}},

C[ -U[2] , U[32] , V[3] ] == {{I*gc33, 0}, {I*gc33, 0}, {0, 0}},

C[ -U[2] , U[31] , -V[3] ] == {{I*gc34, 0}, {I*gc34, 0}, {0, 0}},

C[ S[2] , -S[3] , V[1] , V[3] ] == {{(-I/2)*EL^2*Csc[thetaw], 0}},

C[ -S[3] , S[1] , V[1] , V[3] ] == {{-(EL^2*Csc[thetaw])/2, 0}},

C[ -S[3] , V[1] , V[3] ] == {{-(EL^2*vev*Csc[thetaw])/2, 0}},

C[ S[2] , -S[3] , V[3] ] == {{(-I)*gc38, 0}, {I*gc38, 0}},

C[ -S[3] , S[1] , V[3] ] == {{-gc39, 0}, {gc39, 0}},

C[ V[1] , V[3] , -V[3] ] == {{(-I)*gc40, 0}, {I*gc40, 0}, {I*gc40, 0}, {(-I)*gc40, 0}, {(-I)*gc40, 0}, {I*gc40, 0}},

C[ S[2] , S[3] , V[1] , -V[3] ] == {{(-I/2)*EL^2*Csc[thetaw], 0}},

C[ S[3] , S[1] , V[1] , -V[3] ] == {{(EL^2*Csc[thetaw])/2, 0}},

C[ S[3] , V[1] , -V[3] ] == {{(EL^2*vev*Csc[thetaw])/2, 0}},

C[ S[2] , S[3] , -V[3] ] == {{(-I)*gc44, 0}, {I*gc44, 0}},

C[ S[3] , S[1] , -V[3] ] == {{-gc45, 0}, {gc45, 0}},

C[ V[1] , V[1] , V[3] , -V[3] ] == {{(-I)*gc46, 0}, {(-I)*gc46, 0}, {(2*I)*gc46, 0}},

C[ S[2] , S[2] , V[3] , -V[3] ] == {{(I/2)*EL^2*Csc[thetaw]^2, 0}},

C[ S[3] , -S[3] , V[3] , -V[3] ] == {{(I/2)*EL^2*Csc[thetaw]^2, 0}},

C[ S[1] , S[1] , V[3] , -V[3] ] == {{(I/2)*EL^2*Csc[thetaw]^2, 0}},

C[ S[1] , V[3] , -V[3] ] == {{(I/2)*EL^2*vev*Csc[thetaw]^2, 0}},

C[ V[3] , -V[3] , V[2] ] == {{(-I)*gc51, 0}, {I*gc51, 0}, {I*gc51, 0}, {(-I)*gc51, 0}, {(-I)*gc51, 0}, {I*gc51, 0}},

C[ V[3] , V[3] , -V[3] , -V[3] ] == {{(-I)*gc52, 0}, {(-I)*gc52, 0}, {(2*I)*gc52, 0}},

C[ S[3] , -S[3] , V[1] , V[2] ] == {{I*EL^2*(-1 + Cot[thetaw])*(1 + Cot[thetaw])*Tan[thetaw], 0}},

C[ S[2] , S[1] , V[2] ] == {{-gc54, 0}, {gc54, 0}},

C[ S[3] , -S[3] , V[2] ] == {{(-I)*gc55, 0}, {I*gc55, 0}},

C[ S[2] , -S[3] , V[3] , V[2] ] == {{(I/2)*EL^2*Sec[thetaw], 0}},

C[ -S[3] , S[1] , V[3] , V[2] ] == {{(EL^2*Sec[thetaw])/2, 0}},

C[ -S[3] , V[3] , V[2] ] == {{(EL^2*vev*Sec[thetaw])/2, 0}},

C[ S[2] , S[3] , -V[3] , V[2] ] == {{(I/2)*EL^2*Sec[thetaw], 0}},

C[ S[3] , S[1] , -V[3] , V[2] ] == {{-(EL^2*Sec[thetaw])/2, 0}},

C[ S[3] , -V[3] , V[2] ] == {{-(EL^2*vev*Sec[thetaw])/2, 0}},

C[ V[1] , V[3] , -V[3] , V[2] ] == {{(-2*I)*gc62, 0}, {I*gc62, 0}, {I*gc62, 0}},

C[ S[2] , S[2] , V[2] , V[2] ] == {{(2*I)*EL^2*Csc[2*thetaw]^2, 0}},

C[ S[3] , -S[3] , V[2] , V[2] ] == {{(2*I)*EL^2*Cot[2*thetaw]^2, 0}},

C[ S[1] , S[1] , V[2] , V[2] ] == {{(2*I)*EL^2*Csc[2*thetaw]^2, 0}},

C[ S[1] , V[2] , V[2] ] == {{(2*I)*EL^2*vev*Csc[2*thetaw]^2, 0}},

C[ V[3] , -V[3] , V[2] , V[2] ] == {{(-I)*gc67, 0}, {(-I)*gc67, 0}, {(2*I)*gc67, 0}}

}

(* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *)

(* Parameter replacement lists (These lists were created by FeynRules) *)

(* FA Couplings *)

M$FACouplings = {
     gc22 -> -EL,
     gc23 -> EL,
     gc24 -> -EL,
     gc25 -> EL,
     gc26 -> -EL,
     gc27 -> -(EL*Cot[thetaw]),
     gc28 -> EL*Cot[thetaw],
     gc29 -> -EL,
     gc30 -> EL,
     gc31 -> EL*Cot[thetaw],
     gc32 -> -(EL*Cot[thetaw]),
     gc33 -> EL*Cot[thetaw],
     gc34 -> -(EL*Cot[thetaw]),
     gc38 -> (EL*Csc[thetaw])/2,
     gc39 -> -(EL*Csc[thetaw])/2,
     gc40 -> EL,
     gc44 -> -(EL*Csc[thetaw])/2,
     gc45 -> -(EL*Csc[thetaw])/2,
     gc46 -> -EL^2,
     gc51 -> EL*Cot[thetaw],
     gc52 -> EL^2*Csc[thetaw]^2,
     gc54 -> -(EL*Csc[2*thetaw]),
     gc55 -> -(EL*Cos[2*thetaw]*Csc[thetaw]*Sec[thetaw])/2,
     gc62 -> EL^2*Cot[thetaw],
     gc67 -> -(EL^2*Cot[thetaw]^2)};

