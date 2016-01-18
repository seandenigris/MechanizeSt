as yet unclassified
testLinkUrl

	| page |
	page := Mechanize new get: 'http://google.com'.
	self assert: (page links anySatisfy: [ :e | e url = 'https://mail.google.com/mail/?tab=wm' asUrl ]).