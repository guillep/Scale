world menu
monitorCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'Script browser')
		parent: self title;
		icon: ThemeIcons current processBrowserIcon;
		action: [ SCBrowser open ];
		order: 3