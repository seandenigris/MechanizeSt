as yet unclassified
testGet

	| page form |
	page := Mechanize new get: 'http://google.com'.
	form := page formSatisfying: [ :f | f name = 'f' ].
	form at: 'q' put: 'Hello world'.
	self assert: (form submit includesSubstring: 'href="/search?q=Hello+world').