installing
handleError: anError forCommandLineWithReference: aReference
	| fileReference |
	"We ignore warnings for now"
	(anError isKindOf: OCSemanticWarning)
		ifTrue: [ self warn: ' SemanticWarning: ' , anError messageText.
			^ anError pass ].


	"try to get the proper file"
	fileReference := aReference.
	((anError isKindOf: OCSemanticError) and: [ anError requestor isNotNil ])
		ifTrue: [ fileReference := anError requestor fileReference ].

	"spit out a warning if in headless mode, otherwise a debugger will popup"
	self errorLog: 'Errors in script loaded from ' , fileReference fullName.
	self errorLog: anError messageText.


	"for syntax errors we can use the default action"
	(anError isKindOf: SyntaxErrorNotification)
		ifTrue: [ runner exit: 1 ].
	(anError isKindOf: OCSemanticError)
		ifTrue: [ self class printCompilerWarning: anError.
			^ runner exit: 1 ].

	"otherwise resignal it"
	anError pass