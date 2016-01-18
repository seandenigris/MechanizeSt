as yet unclassified
soup

	| source |
	soup ifNotNil: [ ^ soup ].
	source := self client get: self url.
	^ soup := Soup fromString: source.