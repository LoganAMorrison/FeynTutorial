(* ::Package:: *)

Quit


(* ::Section::Closed:: *)
(*Load FeynRules and Model*)


(* Load FeynRules *)
<<FeynRules`;
SetDirectory[NotebookDirectory[]];
(* Load Model *)
LoadModel["rh_neutrino.fr"];
(* Set the model name *)
modelName="RHNeutrino";


(* ::Section::Closed:: *)
(*Convert Lagrangian to Dirac*)


Lag=WeylToDirac[LSM];


(* ::Section::Closed:: *)
(*Checks*)


CheckDiagonalKineticTerms[Lag]
CheckDiagonalMassTerms[Lag]
(* Don't worry about the non-diagonal piece here. They would be canceled by a gauge-fixing term. *)
CheckDiagonalQuadraticTerms[Lag]


(* ::Section:: *)
(*Compute Feynman Rules*)


vertices=Simplify[FeynmanRules[Lag]]


(* ::Section:: *)
(*Compute Width of N*)


(* vertices = FeynmanRules[Lag] *)
decays=ComputeWidths[vertices]


UpdateWidths[decays]


(* ::Section:: *)
(*Create FeynArts Output*)


WriteFeynArtsOutput[Lag,Output->modelName]


(* Copy FeynArts files to FeynArts *)
targetDir=FileNameJoin[{$UserBaseDirectory,"Applications","FeynArts","Models",modelName}];
(* 
	If there is already a set of model files in FeynArts/Models/AbelianHiggs, 
	you can remove it using DeleteDirectory[targetDir,DeleteContents\[Rule]True]
*)
CopyDirectory[FileNameJoin[{NotebookDirectory[],modelName}],targetDir]


(* 
	If you would like to use this model in FeynCalc, then use:
	
	targetDir=FileNameJoin[{$UserBaseDirectory,"Applications","FeynCalc","FeynArts","Models",modelName}];
	CopyDirectory[FileNameJoin[{NotebookDirectory[],modelName}],targetDir]
	
	NOTE: You must patch this model before it can be use properly in FeynCalc. Use:
	$LoadFeynArts=True;
	<<FeynCalc`
	FAPatch[PatchModelsOnly\[Rule]True]
*)


(* ::Section:: *)
(*Create UFO*)


WriteUFO[Lag,Output->modelName<>"UFO"]



