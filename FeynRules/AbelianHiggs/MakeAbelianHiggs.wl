(* ::Package:: *)

Quit


(* ::Section::Closed:: *)
(*Load FeynRules and Model*)


(* Load FeynRules *)
<<FeynRules`;
SetDirectory[NotebookDirectory[]];
(* Load Model *)
LoadModel["abelian_higgs.fr"];
(* Set the model name *)
modelName="AbelianHiggs";


(* ::Section::Closed:: *)
(*Checks*)


CheckDiagonalKineticTerms[LAbelianHiggs]
CheckDiagonalMassTerms[LAbelianHiggs]
(* Don't work about the non-diagonal piece here. It is a total derivative. *)
CheckDiagonalQuadraticTerms[LAbelianHiggs]


(* ::Section:: *)
(*Compute Feynman Rules*)


FeynmanRules[LAbelianHiggs]//Simplify


(* ::Section::Closed:: *)
(*Create FeynArts Output*)


WriteFeynArtsOutput[LAbelianHiggs,Output->modelName]


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
