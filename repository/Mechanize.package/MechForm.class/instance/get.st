private
get

	self inputsDo: [ :name :value | self client queryAt: name put: value ].
	^ self client get.