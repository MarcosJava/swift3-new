
//CHANGE VALUES
var numbers: [Int] = [1, 2, 3, 4, 5, 6]
numbers[2...4] = [0, 0] // numbers will now be [1, 2, 0, 0, 6].

//JOIN ARRAYS
var numbers: [Int] = [1, 2, 3]
numbers += [4, 5, 6] // numbers will be [1, 2, 3, 4, 5, 6]

//SORTED
let sortedArray = array.sorted(by: <)



//BUBLE SORTED

var listOfNumbers = [1, 2, 3, 10, 100]

var nElements = listOfNumbers.count

var didSwap = true

while didSwap {
    didSwap = false

    for i in 0..<nElements - 1 {
        if listOfNumbers[i] < listOfNumbers[i+1] {
            var tmp = listOfNumbers[i]
            listOfNumbers[i] = listOfNumbers[i+1]
            listOfNumbers[i+1] = tmp
            didSwap = true
        }
    }
}


// INSERTITION SORTED
var listOfNumbers = [1, 2, 3, 10, 100]

var nElements = listOfNumbers.count

for fixedIndex in 0..<nElements {
    for i in fixedIndex+1..<nElements {
        if listOfNumbers[fixedIndex] < listOfNumbers[i] {
            var tmp = listOfNumbers[fixedIndex]
            listOfNumbers[fixedIndex] = listOfNumbers[i]
            listOfNumbers[i] = tmp
        }
    }
}