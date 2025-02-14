Extension { #name : #P3Result }

{ #category : #'*GToolkit4P3' }
P3Result >> gtTableFor: aView [
	<gtView>
	| columnedList |
	columnedList := aView columnedList
		title: 'Table';
		items: [ self data ].
	self columns
		doWithIndex: [ :column :index | 
			columnedList
				column: column fieldName
				do: [ :aColumn | 
					aColumn
						item: [ :eachRow | eachRow at: index ];
						weight: 1 ] ].
	^ columnedList
]
