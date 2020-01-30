(* ::Package:: *)

(* ::Section::Closed:: *)
(*Load FeynArts*)


<<FeynArts`;
$FAVerbose=False;


model=FileNameJoin[{"SU2SM","SU2SM"}];
genericModel={"Lorentz",model};


(* ::Section::Closed:: *)
(*h+h->h+h*)


Top4h=CreateTopologies[0,2->2];
Diagams4h=InsertFields[Top4h,{S[1],S[1]}->{S[1],S[1]},InsertionLevel->{Particles},
                       Model->model,GenericModel->genericModel];
Paint[Diagams4h,ColumnsXRows->{2,2}];


Amplitudes4H=CreateFeynAmp[Diagams4h]/.M$FACouplings;


(* Look at the momenta *)
Amplitudes4H/.FeynAmpList[Rule[Process,x_],__][__]:>x


(* Extract only the amplitudes *)
Amplitudes4H/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x}


(* ::Section::Closed:: *)
(*h+h->(W+) +( W-)*)


TopHHWW=CreateTopologies[0,2->2];
DiagamsHHWW=InsertFields[TopHHWW,{S[1],S[1]}->{V[3],-V[3]},InsertionLevel->{Particles},
                       Model->model,GenericModel->genericModel];
Paint[DiagamsHHWW,ColumnsXRows->{3,2}];


Options[CreateFeynAmp]


AmplitudesHHWW=CreateFeynAmp[DiagamsHHWW]/.M$FACouplings;


(* Look at the momenta *)
AmplitudesHHWW/.FeynAmpList[Rule[Process,x_],__][__]:>x


(* Extract only the amplitudes *)
AmplitudesHHWW/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x}//Simplify


(* ::Section::Closed:: *)
(*Z0+Z0->(W+) +( W-) *)


TopZZWW=CreateTopologies[0,2->2];
DiagamsZZWW=InsertFields[TopZZWW,{V[2],V[2]}->{V[3],-V[3]},InsertionLevel->{Particles},
                       Model->model,GenericModel->genericModel];
Paint[DiagamsZZWW,ColumnsXRows->{3,2}];


AmplitudesZZWW=CreateFeynAmp[DiagamsZZWW]/.M$FACouplings;


(* Look at the momenta *)
AmplitudesZZWW/.FeynAmpList[Rule[Process,x_],__][__]:>x


(* Extract only the amplitudes *)
AmplitudesZZWW/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x}//Simplify


(* ::Section::Closed:: *)
(*h->h at 1-Loop*)


Top2H1L=CreateTopologies[1,1->1, ExcludeTopologies->{Reducible}];
Diagams2H1L=InsertFields[Top2H1L,{S[1]}->{S[1]},InsertionLevel->{Particles},
                       Model->model,GenericModel->genericModel];
Paint[Diagams2H1L,ColumnsXRows->{4,2},ImageSize->{400,200},SheetHeader->None];


Amplitudes2H1L=CreateFeynAmp[Diagams2H1L]/.M$FACouplings;


(* Look at the momenta *)
Amplitudes2H1L/.FeynAmpList[Rule[Process,x_],__][__]:>x


(* Extract only the amplitudes *)
Amplitudes2H1L/.{FeynAmpList[__][x__]:>List[x]}/.{FeynAmp[__,x_]:>x}
