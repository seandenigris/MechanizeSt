as yet unclassified
soup

	^ soup ifNil: [ soup := Soup fromString: self url retrieveContents ]