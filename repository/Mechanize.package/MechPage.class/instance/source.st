as yet unclassified
source

	^ source ifNil: [ source := self client get: self url ]