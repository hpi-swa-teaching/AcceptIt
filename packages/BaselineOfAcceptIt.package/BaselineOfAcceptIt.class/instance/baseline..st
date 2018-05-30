baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: [	spec repository: 'github://hpi-swa/ohm-s:update-to-v0.86/packages' ];
				baseline: 'Project12' with: [spec repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages']. 
			spec
				package: 'acceptit-Core' with: [ spec requires: #('Ohm') ];
				package: 'acceptit-Tests' with: [ spec requires: #('default' 'Project12' 'acceptit-GUI') ];
				package: 'acceptit-GUI' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('acceptit-Core');
				group: 'Tests' with: #('acceptit-Tests');
				group: 'TravisCI' with: #('Tests') ]
