'(WIP)

Sub ColorGradient():
    'Generates a 7x8 color palette in a new sheet
    
    'Sheet Creation
    Sheets.Add
    ActiveSheet.Name = "ColorGradient"
    'Cell Formating
    With Columns("A:P")
        .ColumnWidth = 5
        .RowHeight = 25
        '.VerticalAlignment = xlCenter
        '.HorizontalAlignment = xlCenter
    End With
    'Cell Fill and Font.color
    For i = 1 To 16
        For j = 1 To 16
             A = j + B
            With Cells(i, j)
                .Value = (A-1)
                .Font.ColorIndex = 2 
                .Interior.Color = RGB(A-1,0,0) 
            End With
        Next j
    B = A
    Next i
    B=0
    A=0
    For l = 1 To 16
        For r = 1 To 16
             A = r + B
            With Cells(33-l, r)
                .Value = (A-1)
                .Font.ColorIndex = 2 
                .Interior.Color = RGB(0,A-1,0) 
            End With
        Next r
    B = A
    Next l
    B=0
    A=0
    For m = 34 To 49
        For n = 1 To 16
             A = n + B
            With Cells(m, n)
                .Value = (A-1)
                .Font.ColorIndex = 2 
                .Interior.Color = RGB(0,0,A-1) 
            End With
        Next n
    B = A
    Next m
End Sub
