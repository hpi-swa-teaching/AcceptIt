baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
				spec baseline: 'Ohm' with: [	spec repository: 'github://hpi-swa/ohm-s:update-to-v0.86/packages' ].
			spec
				package: 'acceptit' with: [ spec requires: #('Ohm') ];
				package: 'acceptit-Travis-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('acceptit');
				group: 'Tests' with: #('acceptit-Travis-Tests');
				group: 'TravisCI' with: #('Tests') ]
