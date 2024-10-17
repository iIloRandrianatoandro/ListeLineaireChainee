Class {
	#name : #Cellule,
	#superclass : #Object,
	#instVars : [
		'info',
		'indice',
		'idListe',
		'suivant'
	],
	#category : #ListeLineaireChaine
}

{ #category : #getter }
Cellule >> idListe [
"return idListe de la liste lineaire chaine où se trouve la cellule"
	^idListe
]

{ #category : #accessing }
Cellule >> idListe: aString [ 
"set idListe de la liste lineaire chaine où se trouve la cellule"
	idListe := aString
]

{ #category : #accessing }
Cellule >> indice [
"return indice de la cellule"
	^ indice
]

{ #category : #setter }
Cellule >> indice: aString [ 
"set idListe de la liste lineaire chaine où se trouve la cellule"
	indice := aString
]

{ #category : #accessing }
Cellule >> info [
"return info de la cellule"
	^ info
]

{ #category : #setter }
Cellule >> info: aCharacter [ 
"set info de la cellule"
	info := aCharacter 
]

{ #category : #getter }
Cellule >> suivant [
"return suivant de la cellule"
	^suivant
]

{ #category : #accessing }
Cellule >> suivant: aCharacter [
"set suivant de la cellule" 
	suivant := aCharacter
]
