world menu
monitorCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'Process dashboard')
		parent: self title;
		icon: ThemeIcons current processBrowserIcon;
		action: [ SCBrowser open ];
		order: 3