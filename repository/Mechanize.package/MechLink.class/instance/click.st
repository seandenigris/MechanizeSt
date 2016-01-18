as yet unclassified
click

	| target |
	target := self url.
	target isRelative ifTrue: [ target := target inContextOf: self page url ].
	"source := self client get: target."
	^ MechPage fromUrl: target client: self client.