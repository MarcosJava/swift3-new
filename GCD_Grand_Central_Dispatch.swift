let main = DispatchQueue.main
let background = DispatchQueue.global()
let helper = DispatchQueue(label: "construction_worker_3") 


/// Sync vs Assync
func doSyncWork() { 
 background.sync { 
 	for _ in 1...3 { 
 		print("Light") 
 	} 
 } 
 
 for _ in 1...3 { 
 	print("Heavy") 
 } 
} // main


doSyncWork() 
// Light
// Light
// Light
// Heavy
// Heavy
// Heavy


func doAsyncWork() { 
 background.async { 
 	for _ in 1...3 { 
 		print("Light") 
 	} 
 } 
 
 for _ in 1...3 { 
 	print("Heavy") 
 } 
}                

doAsyncWork() 
// Light
// Heavy
// Heavy
// Light
// Heavy
// Light




/// Usando Main Queue  e  Background Queue
let asianWorker = DispatchQueue(label: "construction_worker_1")
let brownWorker = DispatchQueue(label: "construction_worker_2")
func doLightWork() {
 asianWorker.async { 
 	for _ in 1...10 { print("light") } 
 }

 brownWorker.async { 
 	for _ in 1...10 { print("heavy") } 
 } 
}

doLightWork()
// light, heavy, light, heavy, light, heavy, light, heavy, light...


// Usanddo Queue com maior Prioridade

//userInteractive (highest Priority)
//userInitiated
//default
//utility
//background
//unspecified (lowest )

let whiteWorker = DispatchQueue(label: "construction_worker_3", qos: .background) // lower importance
let blackWorker = DispatchQueue(label: "construction_worker_4", qos: .userInitiated) // higher importance
func doLightWorks() {
 whiteWorker.async { 
 	for _ in 1...10 { 
 		print("white") 
 	} 
 }
 blackWorker.async { 
 	for _ in 1...10 { 
 		print("black") 
 	} 
 } 
}

doLightWorks() // black, white, black, white, black, black, white, black, black, black, white, black,black, black, white, white, white, white, white, white