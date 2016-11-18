// Long Code
var userChosenColor: String? 
var defaultColor = "Red"
var colorToUse = ""

if let Color = userChosenColor { 
	colorToUse = Color 

} else{ 
	colorToUse = defaultColor 
}

//Same code
var colorToUse = userChosenColor ?? defaultColor