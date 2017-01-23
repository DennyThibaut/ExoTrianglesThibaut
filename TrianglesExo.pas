{
ALGO: Triangle de nombres decroissants
BUT: Afficher un triangle de nombres decroissants
ENTREE:
SORTIE: Affichage du tableau correcte

CONST
	MAX<- 10          //Taille max du tableau
Type
	Tableau2int: Tableau [1..MAX,1..MAX] DE entier     //Tableau d'entier
Fonction Initialisation : ENTIER		//Fonction nous donnant la taille max du triangle
	DEBUT
		REPETER
			ECRIRE ('Veuillez entrer la taille du triangle')
			LIRE (Initialisation)						//On definit la taille maximum du triangle
		TANT QUE (Initialisation>1)						//Le triangle doit obligatoirement faire plus d'une ligne et d'une colonne
	FIN

Procedure Tint (VAR T2:Tableau2int;VAR compteur:entier)
VAR
	i,j: ENTIER
DEBUT
	taille<- Initialisation
	compteur<- 0
	POUR i DE Initialisation A 1 PAS DE -1 FAIRE
		POUR j DE 1 A Initialisation FAIRE
			SI i>=j ALORS
				T2[i,j]<- compteur		  // Cela permet de changer les entiers a chaque ligne
				ECRIRE (T2[i,j])   		 //Le tableau sest afficher dans le if afin de faire un triangle et non un carre
			FinSi
		FinPour
	compteur<- compteur+1			   //Incrementation du compteur afin de changer les entiers a chaque ligne
	ECRIRE  						  // saut de ligne
	FinPour
Fin
VAR
	T1:Tableau [1..MAX,1..MAX] DE entier
	i,j,compteur:entier
DEBUT
	Tint(T1,compteur) //Appel de la procedure
	LIRE     		  //Permet de ne pas quitter le programme directement
	
}Program Triangle;
uses crt;
CONST
	MAX=500;
Type
	Tableau2int = Array [1..MAX,1..MAX] of integer; // Tableau d'entier
Function Initialisation:integer;
BEGIN
	REPEAT
		clrscr;
		writeln('Veuillez entrer la taille du triangle');
		readln (Initialisation);
	UNTIL (Initialisation>1)
END;

// --------- PROCEDURE D'INITIALISATION DU TABLEAU D'ENTIER ----------
Procedure Tint(VAR T2:Tableau2int; VAR compteur:integer);
VAR
	i,j:integer;
	taille:integer;
BEGIN
	taille:=Initialisation;
	compteur:=0;
	For i:=taille downto 1 do
		Begin
			For j:=1 to taille do
				Begin
					If i>=j then
						Begin
							T2[i,j]:=compteur; // Le compteur sert a changer les entiers a chaque ligne
							Write(T2[i,j]); // Le tableau sest afficher dans le if pour n'afficher que lorsque i>=j (pour faire un triangle)
						End;
				End;
			compteur:=compteur+1;
			Writeln;
		End;
END;


Var
	T1:Array[1..MAX,1..MAX] of integer;
	i,j,compteur:integer;
BEGIN
	clrscr;
	Tint(T1,compteur); // Appel de la procedure
	Readln;
END.
