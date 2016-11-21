
var stringArray = ["hello", "Come on", "Go there"]
var intArray = [10, 01, 1992]
var doubleArray = [2.7, 2.8, 2.0]


func printStringFromArray(a: [String]){
	for s in a {
		print(s)
	}
}

func printIntFromArray(a: [Int]){
	for s in a {
		print(s)
	}
}
func printDoubleFromArray(a: [Double]){
	for s in a {
		print(s)
	}
}

printDoubleFromArray(a: doubleArray)
printStringFromArray(a: stringArray)
printIntFromArray(a: intArray)


//Ex 2 


func doNothing<T> (x:T) -> T {
	return x
}

doNothing(x: "ssss")
doNothing(x: 2123)

// Ex 3

struct GenericArray<T> {
	var items = [T]()
	mutating func push(item: T) {
		items.append(item);
	}
}

var myFriendList = ["John", "Thainara", "Carol","Larrisa"]
var array = GenericArray(items: myFriendList)
array.push(item: "Bob")
array.items

