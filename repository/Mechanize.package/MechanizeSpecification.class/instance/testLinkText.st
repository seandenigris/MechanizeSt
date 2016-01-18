as yet unclassified
testLinkText

	| page |
	page := Mechanize new get: 'http://google.com'.
	self assert: (page links anySatisfy: [ :e | e text = 'Gmail' ]).