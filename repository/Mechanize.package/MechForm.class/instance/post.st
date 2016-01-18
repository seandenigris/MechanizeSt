private
post

	self inputsDo: [ :name :value | self client formAt: name put: value ].
	^ self client post.