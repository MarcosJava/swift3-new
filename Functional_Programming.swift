// Imperative (a.k.a boring)
var newEvens = [Int]()
for i in 1...10 {
 if i % 2 == 0 { 
 	newEvens.append(i) 
 } 
}
print(newEvens) // [2, 4, 6, 8, 10]


// Declarative 😎
var evens = Array(1...10).filter { $0 % 2 == 0 } 
print(evens) // [2, 4, 6, 8, 10]
