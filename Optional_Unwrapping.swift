var myUsername: Double?
var myPassword: Double?
// Hideous Code
func userLogIn() {
 if let username = myUsername {
  if let password = myPassword {
   print("Welcome, \(username)"!)
  }
 }
}



// Pretty Code
func userLogIn() {
 
 guard let username = myUsername, let password = myPassword 
  else { return } 
 print("Welcome, \(username)!") 
 
}