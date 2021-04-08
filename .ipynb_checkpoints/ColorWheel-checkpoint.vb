Sub Rainbow():

    Dim interval As Long
    Dim CoDomain As Long
    Dim LastRow As Long
    
    CoDomain = 255
    LastRow = 25
    interval = 10
    
    Red = CoDomain
    Green = 0
    Blue = 0
    


    For i = 0 to 3
    	For Row = 1 To LastRow
        
        	Cells(Row+(i*LastRow), 1).Interior.Color = RGB(Red, Green, Blue)
        'Red = CoDomain - interval * Row
        Green = interval * Row
        Green = CoDomain - interval * Row
        
    Next Row
    For Row = 1 To LastRow
        
        Cells(Row + LastRow, 1).Interior.Color = RGB(Red, Green, Blue)
        Red = CoDomain - interval * Row
        'Green = interval * Row
        
    Next Row
    For Row = 1 To LastRow
        
        Cells(Row + (2 * LastRow), 1).Interior.Color = RGB(Red, Green, Blue)
        'Red = CoDomain - interval * Row
        'Green = interval * Row
        Blue = interval * Row
        
    Next Row
    For Row = 1 To LastRow
        
        Cells(Row + (3 * LastRow), 1).Interior.Color = RGB(Red, Green, Blue)
        'Red = CoDomain - interval * Row
        Green = CoDomain - interval * Row
        'Blue = interval * Row
        
    Next Row

End Sub
