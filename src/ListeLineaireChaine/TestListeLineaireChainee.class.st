Class {
	#name : #TestListeLineaireChainee,
	#superclass : #TestCase,
	#category : #ListeLineaireChaine
}

{ #category : #tests }
TestListeLineaireChainee >> testCelluleCree [
	|maCellule|
	maCellule := Cellule new.
	maCellule info: $a.
	
]

{ #category : #tests }
TestListeLineaireChainee >> testListeLineaireChaineeCree [
	"tester la creation d'un liste lineaire chainee"
	|maLLC boleenInfo1 boleenInfo2 boleenInfo3 boleenSuivant1 boleenSuivant2 boleenSuivant3| 
	maLLC := ListeLineaireChainee new.
	maLLC idListe: 'L001'.
	maLLC cellule: 1 valeurInfo: $a. 
	maLLC cellule: 2 valeurInfo: $b.
	maLLC cellule: 3 valeurInfo: $c.
	boleenInfo1 := (maLLC infoCellule: 1) = $a. "pas meme objet mais meme valeur"
	boleenInfo2 := (maLLC infoCellule: 2) = $b.
	boleenInfo3 := (maLLC infoCellule: 3) = $c.
	boleenSuivant1 := (maLLC suivantCellule: 1) == (maLLC infoCellule: 2). "meme objet"
	boleenSuivant2 := (maLLC suivantCellule: 2) == (maLLC infoCellule: 3). "meme objet"
	boleenSuivant3 := (maLLC suivantCellule: 3) == nil. "meme objet"
	self assert: [((((boleenInfo1 and: boleenInfo2) and: boleenInfo3 )and: boleenSuivant1) and: boleenSuivant2) and: boleenSuivant3]
	
	
]
