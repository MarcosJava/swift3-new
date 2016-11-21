struct Human {
	var numberOfLegs: Int
	var name:String
	var age:Int

	func sayAboutMe(){
		print("My name is \(name) and I am \(age)")
	}
}


var marcos = Human(numberOfLegs: 2, name:"Marcos", age: 25)
marcos.sayAboutMe() //My name is Marcos and I am 25


////////////Another example

struct Square {
	var width: Double
	var heigth:Double
	var depth:Double

	var area: Double{
		return width * heigth * depth
	}
}


var bedroom = Square(width: 20.5, heigth: 45.5, depth: 55.5)
bedroom.area // 105,5

