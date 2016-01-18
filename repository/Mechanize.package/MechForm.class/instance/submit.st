as yet unclassified
submit

	| target inputs response inputsWithoutButtons |
	target := soupTag action asUrl.
	target isRelative ifTrue: [ target := self page url / target ].
	self client get: self page url.
	self client url: target.
	inputs := soupTag findAllTags: 'input'.
	inputsWithoutButtons := inputs reject: [ :e | (e attributeAt: 'type') = 'submit' ].
	inputsWithoutButtons do: [ :e | | name value |
		name := e attributeAt: 'name'.
		value := e attributeAt: 'value'.
		self client formAt: name put: value ].
	^ response := soupTag method = 'post'
		ifTrue: [ self client post ]
		ifFalse: [ self client get ].