
/// class (reference) vs struct (value)


///////////////// CLASSS
class Human {
	var name: String
	init (name: String){
		self.name = name
	}
}

var newClass = Human(name: "Marcos")
var anotherClass = newClass

newClass.name
anotherClass.name
newClass.name = "Bob"
anotherClass.name //BOB =O


///////////// Struct

struct HumanStruct {
	var name: String
	init (name: String){
		self.name = name
	}
}

var newStruct = Human(name: "Marcos")
var anotherStruct = newStruct

newStruct.name
anotherStruct.name
newStruct.name = "Bob"
anotherStruct.name //Marcos :/ 