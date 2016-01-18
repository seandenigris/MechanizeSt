as yet unclassified
testLinkClick

	| page link targetPage |
	page := Mechanize new get: 'http://google.com'.
	link := page links detect: [ :e | e text = 'Gmail' ].
	targetPage := link click.
	self assert: (targetPage links anySatisfy: [ :e | e text trimBoth = 'Need help?' ]).