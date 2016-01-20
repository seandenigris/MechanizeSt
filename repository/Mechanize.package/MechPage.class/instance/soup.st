as yet unclassified
soup

	soup ifNotNil: [ ^ soup ].
	^ soup := Soup fromString: self source.