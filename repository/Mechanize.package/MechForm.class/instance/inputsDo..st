private
inputsDo: aBlock
	
	| inputs inputsWithoutButtons |
	inputs := soupTag findAllTags: 'input'.
	inputsWithoutButtons := inputs reject: [ :e | (e attributeAt: 'type') = 'submit' ].
	inputsWithoutButtons do: [ :e | | name value |
		name := e attributeAt: 'name'.
		value := e attributeAt: 'value'.
		aBlock value: name value: value ].