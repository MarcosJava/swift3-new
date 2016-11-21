class Human {
	var name:String 
	var age: Int

	func aboutMe(){
		print("I'm a Human")
	}
}


class Person: Human {
	override func aboutMe(){
		print("I'm a Person")
	}
}


var person = Person()
person.name = "Personing"
person.age = 44
person.aboutMe() //I'm a Person

var human = Human()
human.name = "humaing"
human.age = 3
human.aboutMe() //I'm a Human