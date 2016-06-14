baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
				spec baseline: 'Ohm' with: [	spec repository: 'github://hpi-swa/ohm-s:master/packages' ].
			spec
				package: 'acceptit-Core-Model';
				package: 'acceptit-Travis-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('acceptit-Core-Model');
				group: 'Tests' with: #('acceptit-Travis-Tests');
				group: 'TravisCI' with: #('Tests') ]
