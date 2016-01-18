as yet unclassified
at: inputName put: value

	| inputTag |
	inputTag := soupTag findTag: [ :e | e name = 'input' and: [ (e attributeAt: 'name') = inputName ] ].
	inputTag attributeAt: 'value' put: value.