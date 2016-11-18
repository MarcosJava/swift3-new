// Normal Function 
func sum(x: Int, y: Int) -> Int { 
	return x + y 
}
var result = sum(x: 5, y: 6) // 11


//CLOSURE
var sumUsingClosure: (Int, Int) -> (Int) = { $0 + $1 }
sumUsingClosure(5, 6) // 11 



