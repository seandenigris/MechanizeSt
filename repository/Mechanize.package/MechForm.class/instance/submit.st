as yet unclassified
submit

	| target response |
	target := soupTag action asUrl.
	target isRelative ifTrue: [ target := self page url / target ].
	self client get: self page url.
	self client url: target.
	^ response := soupTag method = 'post'
		ifTrue: [ self post ]
		ifFalse: [ self get ].