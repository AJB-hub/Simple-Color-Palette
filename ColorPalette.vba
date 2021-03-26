Sub color_palette():
    'Generates a 7x8 color palette in a new sheet
    
    'Sheet Creation
    Sheets.Add
    ActiveSheet.Name = "Color_Palette"
    'Cell Formating
    With Columns("A:H")
        .ColumnWidth = 10
        .RowHeight = 55
        .VerticalAlignment = xlCenter
        .HorizontalAlignment = xlCenter
    End With
    'Cell Fill and Font.color
    For i = 1 To 7
        For j = 1 To 8
             A = j + B
            With Cells(i, j)
                .Value = A
                .Font.ColorIndex = (A + 3) Mod 56
                .Interior.ColorIndex = A
            End With
        Next j
    B = A
    Next i

End Sub


