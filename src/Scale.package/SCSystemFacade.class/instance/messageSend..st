convenience
messageSend: aSelector
	"
		easy builder of message sends to the facade object. Convenient for doing callbacks without using blocks. 
	"

	^ MessageSend receiver: self selector: aSelector