{
ALGO: Faire un triangle composé de 'O' et de 'X'
BUT: Afficher un triangle
ENTREE:Taille max du triangle
SORTIE: Triangle affiche correctement

CONST
	MAX<- 500
TYPE
	Tableau2char: Tableau [1..MAX,1..MAX] de Caractere		//Tableau de caractere
Fonction Initialisation : ENTIER		//Fonction nous donnant la taille max du triangle
	DEBUT
		REPETER
			ECRIRE ('Veuillez entrer la taille du triangle')
			LIRE (Initialisation)						//On definit la taille maximum du triangle
		TANT QUE (Initialisation>1)						//Le triangle doit obligatoirement faire plus d'une ligne et d'une colonne
	FIN

PROCEDURE TChar (VAR T1:Tableau2char)
VAR
	taille,i,j:ENTIER
BEGIN
	taille<- Initialisation     // Nous affectons la taille max du triangle a une valeur
	POUR i<-1 A taille FAIRE
		POUR j<- 1 A taille FAIRE
			SI i>=j ALORS
				T1[i,j]<- 'O'                 // Le tableau se remplit en premier lieu de 'O'
			FinSi
			SI (i=j) OU (i=taille) OU (j=1) ALORS
				T1[i,j]<- 'X'                               // On pose les contours a l'aide du caractere 'X'
			FinSi
			ECRIRE (T1[i,j])
		FinPour
	ECRIRE   // saut de ligne
	FinPour
Fin

VAR
	T2: Tableau [1..MAX,1..MAX] DE Caractere
	taille:ENTIER
DEBUT
	TChar(T2)
	LIRE  			//Permet de ne pas quitter le programme directement
FIN}Program TriangleChar;
uses crt;
CONST
	MAX=500;
TYPE
	Tableau2char = Array [1..MAX,1..MAX] of Char; // Tableau de caractère
Function Initialisation : integer;
BEGIN
	REPEAT
		clrscr;
		writeln('Veuillez entrer la taille du triangle');
		readln (Initialisation);
	UNTIL (Initialisation>1)
END;

Procedure TChar(VAR T1:Tableau2char);
VAR
	taille:integer;
	i,j:integer;
BEGIN
	taille:=Initialisation;
	For i:=1 to taille do
		Begin
			For j:=1 to taille do
				Begin
					If i>=j then
						Begin
							T1[i,j]:='O'; // Le tableau se rempli d'abbord de 'O'
						End;
					If (i=j) OR (i=taille) OR (J=1) then
						Begin
							T1[i,j]:='X'; // Puis les contours prennent le caractère 'X'
						End;
					Write(T1[i,j]);
				End;
			Writeln;
		End;
END;
Var
	T2:Array[1..MAX,1..MAX] of Char;
	taille:INTEGER;
BEGIN
	clrscr;
	TChar(T2); // Appel de la procedure
	readln;
END.
