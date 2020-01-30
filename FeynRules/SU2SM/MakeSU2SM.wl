(* ::Package:: *)

Quit


(* ::Section::Closed:: *)
(*Load FeynRules and Model*)


(* Load FeynRules *)
<<FeynRules`;
SetDirectory[NotebookDirectory[]];
(* Load Model *)
LoadModel["su2_sm.fr"];
(* Set the model name *)
modelName="SU2SM";


(* ::Section::Closed:: *)
(*Checks*)


CheckDiagonalKineticTerms[LSMWeak]
CheckDiagonalMassTerms[LSMWeak]
(* Don't worry about the non-diagonal piece here. They would be canceled by a gauge-fixing term. *)
CheckDiagonalQuadraticTerms[LSMWeak]


(* ::Section:: *)
(*Compute Feynman Rules*)


FeynmanRules[LSMWeak]//Simplify


(* ::Section::Closed:: *)
(*Create FeynArts Output*)


WriteFeynArtsOutput[LSMWeak,Output->modelName]


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
