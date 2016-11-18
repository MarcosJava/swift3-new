func double(number: inout Int) {
    number = number * 2
}

var n = 10
double(number: &n)
print(n) // 20


//====================================================================


func printNumber(after number: Int) {
    var number = number
    number += 1
    print(number)
}

printNumber(after: 2) // 3

//---------------------------------------------------------

import Foundation

func countdown(_ N: Int) {
    var i = N

    while i > 0 {
        print(i)

        sleep(1)

        i -= 1
    }

    print("GO!")
}

countdown(2)