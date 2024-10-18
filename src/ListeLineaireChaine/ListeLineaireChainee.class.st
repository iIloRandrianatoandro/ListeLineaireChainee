"
C est une classe creant une liste lineaire chainee composee de plusieurs cellules relies entre elles
"
Class {
	#name : #ListeLineaireChainee,
	#superclass : #Object,
	#instVars : [
		'idListe'
	],
	#category : #ListeLineaireChaine
}

{ #category : #'assignation info' }
ListeLineaireChainee >> cellule: anInteger valeurInfo: aCharacter [ 
	"creer une cellule avec indice anInteger et info aCharacter"
	|maCellule celluleAvant indiceCelluleAvant|
	maCellule :=  Cellule new.
	maCellule indice: anInteger .
	maCellule idListe: self idListe .
	maCellule info: aCharacter . 
	indiceCelluleAvant := maCellule indice -1.
	celluleAvant := Cellule allInstances detect: [ :i | (i indice = indiceCelluleAvant) and: [i idListe = self idListe] ]ifNone: [ nil ].
	celluleAvant = nil
		ifFalse: [ celluleAvant suivant:  maCellule info  ]
	
]

{ #category : #getter }
ListeLineaireChainee >> idListe [
"return idListe"
	^ idListe
]

{ #category : #accessing }
ListeLineaireChainee >> idListe: aString [ 
"get the idListe"
	idListe := aString
]

{ #category : #getter }
ListeLineaireChainee >> infoCellule: anInteger [ 
	"retourne info de la cellule à l'indice Integer"
	|maCellule|
	maCellule := Cellule allInstances detect: [ :i | (i indice = anInteger) and: [i idListe = self idListe] ].
	^maCellule info.
]

{ #category : #getter }
ListeLineaireChainee >> suivantCellule: anInteger [ 
	"retourne suivant de la cellule à l'indice Integer"
	|maCellule|
	maCellule := Cellule allInstances detect: [ :i | (i indice = anInteger) and: [i idListe = self idListe] ].
	^maCellule suivant.
]
