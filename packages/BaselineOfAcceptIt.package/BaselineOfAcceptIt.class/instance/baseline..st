baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
				spec package: 'OhmS' with: [ spec repository: 'https://github.com/hpi-swa/Ohm-S' ].
			spec
				package: 'acceptit-Core-Model' with: [ spec requires: #('OhmS') ];
				package: 'acceptit-Travis-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('acceptit-Core-Model');
				group: 'Tests' with: #('acceptit-Travis-Tests');
				group: 'TravisCI' with: #('Tests') ]
