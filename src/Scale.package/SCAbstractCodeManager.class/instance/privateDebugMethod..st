as yet unclassified
privateDebugMethod: aCompiledMethod
	| guineaPig context debugSession |
	guineaPig := [ aCompiledMethod valueWithReceiver: self runnerInstance arguments: #() ] newProcess.
	context := guineaPig suspendedContext.
	debugSession := guineaPig newDebugSessionNamed: 'debug it' startedAt: context.
	debugSession stepIntoUntil: [ :currentContext | currentContext method == aCompiledMethod ].
	Smalltalk tools debugger openOn: debugSession withFullView: true