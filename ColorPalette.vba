Sub Color_Palette()
    'dimensions
    Columns("A:H").ColumnWidth = 10
    Rows("1:7").RowHeight = 55
    'number location
    Range("A:H").VerticalAlignment = xlCenter
    Range("A:H").HorizontalAlignment = xlCenter
    
    Dim n As Long                                            'clock seed
    n = InputBox("Color Clock Seed:")                        '7000 has all fonts except 56 as their interior color
    For i = 1 To 7
        For j = 1 To 8
            A = j + B                                        'Carry over from previous row
            Cells(i, j).Value = A
            Cells(i, j).Font.ColorIndex = (A + n) Mod 56
            Cells(i, j).Interior.ColorIndex = A
        Next j
    B = A                                                    'Final value at end of row
    Next i

End Sub
