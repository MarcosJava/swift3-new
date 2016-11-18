// 💩 Code
func getVolume(width: Double) -> Double { return width * 3 }
func getWidth(volume: Double) -> Double { return volume / 3 }
getVolume(width: 10) // return 30
getWidth(volume: 300) // return 100
getVolume(width: 600) // return 1800



// Good Code
var width: Double = 10
var volume: Double {
 get { return width * 3 }
 set { width = newValue / 3 } 
} 


width // 10
volume // 30
volume = 1000 
width // 333.3

