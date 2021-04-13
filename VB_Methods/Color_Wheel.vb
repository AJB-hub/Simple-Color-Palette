Sub ColorWheel()
    


    'Sheet Creation
    Sheets.Add
    ActiveSheet.Name = "ColorWheel"


    Dim colors(5) As Variant
    Dim chrt As ChartObject

    colors = [1,2,3,4,5]

	Set chrt = Sheets("ColorWheel").ChartObjects.Add(Left:=180, Width:=270, Top:=7, Height:=210)
	chrt.Chart.SetSourceData Source:=colors
	chrt.Chart.ChartType = xlPie


End Sub