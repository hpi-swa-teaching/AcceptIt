baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
		  spec project: 'OhmS' with: [
			  spec
				  repository: 'https://github.com/hpi-swa/Ohm-S/tree/master/packages';
				  versionString: #stable].
			spec
				package: 'acceptit-Core-Model' with: [spec requires: #('libraries')];
				package: 'acceptit-Travis-Tests' with: [ spec requires: #('default') ].
			spec
			  group: 'libraries' with: #('OhmS');
				group: 'default' with: #('acceptit-Core-Model');
				group: 'Tests' with: #('acceptit-Travis-Tests');
				group: 'TravisCI' with: #('Tests') ]
