baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'Soup' with: [
			spec
				className: 'ConfigurationOfSoup';
				versionString: #'stable';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/Soup/main/' ].
		spec package: 'Mechanize' with: [ spec requires: #('Soup') ]. ].
