private
call: aCommand withInterpreter: anInterpreter

	^ (self callAsync: aCommand withInterpreter: anInterpreter) value