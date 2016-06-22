as yet unclassified
manager
	^ manager ifNil: [ manager := SCAbstractCodeManager managerFor: self interpreter ]