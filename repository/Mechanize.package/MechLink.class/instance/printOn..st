as yet unclassified
printOn: aStream

	aStream
		nextPutAll: self text;
		space;
		nextPutAll: '->';
		space;
		nextPutAll: self url asString;
		space;
		nextPutAll: '(link)'.