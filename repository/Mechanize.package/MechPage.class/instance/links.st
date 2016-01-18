as yet unclassified
links

	| linkTags |
	linkTags := self soup findAllTags: 'a'.
	^ linkTags collect: [ :e | MechLink fromSoupTag: e in: self ].