(* ::Package:: *)

Quit


(* ::Title:: *)
(*Diagonalizing Neutrino Mass Matrix*)


(* ::Text:: *)
(**)


MassMatrix={{0,v*y/Sqrt[2]},{v*y/Sqrt[2],\[Mu]N}}


MixMatrix={{I*Cos[\[Theta]],-Sin[\[Theta]]},{I*Sin[\[Theta]],Cos[\[Theta]]}}


DiagMassMatrix=Transpose[MixMatrix].MassMatrix.MixMatrix//Simplify


ySol=Solve[DiagMassMatrix[[1,2]]==0,y][[1]]


\[Mu]NSol=(Solve[(DiagMassMatrix/.ySol)[[2,2]]==MN,\[Mu]N])[[1]]//FullSimplify


(DiagMassMatrix/.ySol/.\[Mu]NSol)//Simplify


ySol/.\[Mu]NSol//FullSimplify


MixMatrix.{nl,nr}
