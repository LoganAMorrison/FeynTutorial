(* ::Package:: *)

(* ::Title:: *)
(*Diagonalizing Higgs-Scalar-Mediator Mass Matrix*)


(* ::Text:: *)
(*We will Diagonalize the mass matrix from*)
(*V(H,S)=-Subscript[\[Mu], H]^2 SuperDagger[H] H+\[Lambda](SuperDagger[H] H)^2+Subscript[c, 1]S SuperDagger[H] H+1/2 Subscript[\[Mu], s]^2 S^2*)
(*And determine Subscript[\[Mu], H],\[Lambda] , Subscript[\[Mu], S] and Subscript[c, 1] in terms of Subscript[M, H],Subscript[M, S],Subscript[v, H] and Sin[\[Theta]].*)


(* ::Subsection::Closed:: *)
(*Define Higgs-Scalar Potential*)


HH={-I*GP,vev+H+I*G0}/Sqrt[2];
HHd={-I*GPbar,vev+H-I*G0}/Sqrt[2];


ScalarPotential=-muH^2 * HHd.HH + lam * (HHd.HH)^2+1/2 * muS^2 * S^2+ c1 * S * HHd.HH;


(* ::Text:: *)
(*Find \[Lambda] is terms of the VEV*)


lamSol=Solve[(D[ScalarPotential,vev]/.{G0->0,GP->0,GPbar->0,H->0,S->0})==0,lam][[1]]


(* ::Subsection::Closed:: *)
(*Define the mass matrix, mixing matrix and diagonal mass matrix*)


MassMatrix=Table[D[ScalarPotential,{f1,1},{f2,1}],{f1,{H,S}},{f2,{H,S}}]/.{G0->0,GP->0,GPbar->0,H->0,S->0}/.lamSol


MixMatrix={{Cos[\[Theta]],-Sin[\[Theta]]},{Sin[\[Theta]],Cos[\[Theta]]}};


DiagMassMatrix=Transpose[MixMatrix].MassMatrix.MixMatrix//Simplify


(* ::Subsection::Closed:: *)
(*Solve for Subscript[c, 1]*)


c1Sol=Solve[DiagMassMatrix[[1,2]]==0,c1][[1]]


(* ::Subsection::Closed:: *)
(*Solve for Subscript[\[Mu], H]*)


Solve[(DiagMassMatrix[[1,1]]/.c1Sol)==MH^2,muH]
muHSol=%[[2]]/.c1Sol//Simplify
(* Update the Subscript[c, 1] solution *)
c1Sol=c1Sol/.muHSol//FullSimplify


(* ::Subsection::Closed:: *)
(*Solve for Subscript[\[Mu], S]*)


Solve[(DiagMassMatrix[[2,2]]/.c1Sol/.muHSol)==MS^2,muS]
muSSol=%[[2]]//FullSimplify
(* Updatee Subscript[c, 1] and Subscript[\[Mu], H] solutions *)
c1Sol=c1Sol/.muSSol//FullSimplify
muHSol=muHSol/.muSSol//FullSimplify


(* ::Subsection::Closed:: *)
(*Check that the mass matrix is diagonalized*)


DiagMassMatrix/.Join[muSSol,c1Sol,muHSol]//FullSimplify
