

struct TimeTables {
	let multipler: Int
	subscript(index: Int) -> Int {
		return multipler * index
	}
}

let threeTimeTables = TimeTables(multipler: 3)

threeTimeTables[2] //6
threeTimeTables[3] //9



// EX 2 

class Weekdays {
	var days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
	subscript(index: Int) -> String {
		return0 days[index]
	}
}

var someWeek = Weekdays()
someWeek[1] //Tue
someWeek[5] //Sat


// EX 3

struct HealfInfo {
	var info = ["Heigth": 12, "Weigth": 22, "Body Fat": 33]
	subscript(key: String) -> Double {
		
		if let newInfo = info[key] {
			return newInfo
		} else {
			return 0
		}

	}
}

var marcos = HealfInfo()
marcos["Heigth"] //12
marcos["another String"] //0
marcos["Body Fat"] //33