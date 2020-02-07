(* ::Package:: *)

Quit


(* ::Section::Closed:: *)
(*Load FeynArts*)


<<FeynArts`;
$FAVerbose=False;


model=FileNameJoin[{"HiggsPortalDM","HiggsPortalDM"}];
genericModel={"Lorentz",model};


(* ::Section::Closed:: *)
(*S-> \!\(\*OverscriptBox[\(\[Chi]\), \(_\)]\)\[Chi]*)


(* ::Subsection::Closed:: *)
(*Tree*)


Module[{Top,Diags,Amp},
	Top=CreateTopologies[0,1->2];
	Diags=InsertFields[
		Top,
		{S[4]}->{F[5],-F[5]},
		InsertionLevel->{Particles},
		Model->model,
		GenericModel->genericModel
	];
    Paint[Diags,ColumnsXRows->1,SheetHeader->None,Numbering->None];
    Amp=CreateFeynAmp[Diags]/.M$FACouplings;
    
    (* Look at the momenta *)
    Echo[Amp/.FeynAmpList[Rule[Process,x_],__][__]:>x,"Momentum Structure:"];
    
    (* Extract only the amplitudes *)
    Echo[Amp/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x},"Amplitudes:"];
]


(* ::Subsection::Closed:: *)
(*1-Loop*)


Module[{Top,Diags,Amp,AmpList,i},
	Top=CreateTopologies[1,1->2,ExcludeTopologies->{Reducible}];
	Diags=InsertFields[
		Top,
		{S[4]}->{F[5],-F[5]},
		InsertionLevel->{Particles},
		Model->model,
		GenericModel->genericModel
	];
    Paint[Diags,ColumnsXRows->{3,2},SheetHeader->None,Numbering->None];
    Amp=CreateFeynAmp[Diags]/.M$FACouplings;
    
    (* Look at the momenta *)
    Echo[Amp/.FeynAmpList[Rule[Process,x_],__][__]:>x,"Momentum Structure:"];
    
    (* Extract only the amplitudes *)
    AmpList=Amp/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x};
    
    For[i=1,i<=Length[AmpList],i++,
		Echo[AmpList[[i]],"Amplitude "<>ToString[i]<>" ="];
	];
]


(* ::Section::Closed:: *)
(*\!\(\*OverscriptBox[\(\[Chi]\), \(_\)]\)\[Chi]-> H H*)


Module[{Top,Diags,Amp,AmpList,i},
	Top=CreateTopologies[0,2->2];
	Diags=InsertFields[
		Top,
		{F[5],-F[5]}->{S[1],S[1]},
		InsertionLevel->{Particles},
		Model->model,
		GenericModel->genericModel
	];
    Paint[Diags,ColumnsXRows->{2,2},SheetHeader->None,Numbering->None];
    Amp=CreateFeynAmp[Diags]/.M$FACouplings;
    
    (* Look at the momenta *)
    Echo[Amp/.FeynAmpList[Rule[Process,x_],__][__]:>x,"Momentum Structure:"];
    
    (* Extract only the amplitudes *)
    AmpList=Amp/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x};
    
    For[i=1,i<=Length[AmpList],i++,
		Echo[AmpList[[i]],"Amplitude "<>ToString[i]<>" ="];
    ]
]


(* ::Section::Closed:: *)
(*\[Chi]-> \[Chi]*)


Module[{Top,Diags,Amp,AmpList,i},
	Top=CreateTopologies[1,1->1,ExcludeTopologies->{Reducible}];
	Diags=InsertFields[
		Top,
		{F[5]}->{F[5]},
		InsertionLevel->{Particles},
		Model->model,
		GenericModel->genericModel
	];
    Paint[Diags,ColumnsXRows->{2,2},SheetHeader->None,Numbering->None];
    Amp=CreateFeynAmp[Diags]/.M$FACouplings;
    
    (* Look at the momenta *)
    Echo[Amp/.FeynAmpList[Rule[Process,x_],__][__]:>x,"Momentum Structure:"];
    
    (* Extract only the amplitudes *)
    AmpList=Amp/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x};
    
    For[i=1,i<=Length[AmpList],i++,
		Echo[AmpList[[i]],"Amplitude "<>ToString[i]<>" ="];
    ]
]



