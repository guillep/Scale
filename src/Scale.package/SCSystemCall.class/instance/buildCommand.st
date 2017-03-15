private building
buildCommand 
	| spec |
	
	spec := self buildCommandSpec.
	^ self taskClass buildingCommandWith: spec