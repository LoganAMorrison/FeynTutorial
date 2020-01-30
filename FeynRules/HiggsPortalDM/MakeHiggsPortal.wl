(* ::Package:: *)

Quit


(* ::Section::Closed:: *)
(*Load FeynRules and Model*)


(* Load FeynRules *)
<<FeynRules`;
SetDirectory[NotebookDirectory[]];
(* Load Model *)
LoadModel["higgs_portal_dm.fr"];
(* Set the model name *)
modelName="HiggsPortalDM";


(* ::Section::Closed:: *)
(*Checks*)


CheckDiagonalKineticTerms[LSM]
CheckDiagonalMassTerms[LSM]
(* Don't worry about the non-diagonal piece here. They would be canceled by a gauge-fixing term. *)
CheckDiagonalQuadraticTerms[LSM]


(* ::Section::Closed:: *)
(*Compute Feynman Rules*)


FeynmanRules[LSM,Contains->{sm}]//Simplify


FeynmanRules[LSM,Contains->{chi}]//Simplify


(* ::Section:: *)
(*Compute Width of S*)


decays=ComputeWidths[FeynmanRules[LSM]]


UpdateWidths[decays]


(* ::Section::Closed:: *)
(*Create FeynArts Output*)


Options[WriteFeynArtsOutput]


WriteFeynArtsOutput[LSM,Output->modelName]


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
(*Create UFO (for MadGraph)*)


WriteUFO[LSM,Output->modelName<>"UFO"]


(* ::Section::Closed:: *)
(*Create CalcHEP (for MicrOmegas)*)


WriteCHOutput[LSM,Output->modelName<>"CH"]



