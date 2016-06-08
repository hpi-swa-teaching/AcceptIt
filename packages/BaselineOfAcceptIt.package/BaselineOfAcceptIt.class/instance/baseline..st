baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'acceptit-Core-Model';
				package: 'acceptit-Travis-Tests' with: [ spec requires: #('default') ].
			spec
				group: 'default' with: #('acceptit-Core-Model');
				group: 'Tests' with: #('acceptit-Travis-Tests');
				group: 'TravisCI' with: #('Tests') ]