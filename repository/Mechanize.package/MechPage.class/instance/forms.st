as yet unclassified
forms

	| formTags |
	formTags := self soup findAllTags: 'form'.
	^ formTags collect: [ :tag | MechForm fromSoupTag: tag in: self ].