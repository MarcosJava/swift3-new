// Simply Bad
switch "Audlt" {
 
 case "Adult": print("Pay $7")
 case "Child": print("Pay $3")
 case "Senior": print("Pay $4")
 default: print("You alive, bruh?") 

}


// Beautiful Code
enum People { case adult, child, senior }
switch People.adult {
 case .adult: print("Pay $7")
 case .child: print("Pay $3")
 case .senior: print("Pay $4")
 default: print("You alive, bruh?") 
}