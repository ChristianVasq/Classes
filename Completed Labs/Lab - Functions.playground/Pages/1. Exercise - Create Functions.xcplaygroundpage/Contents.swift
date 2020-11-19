/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the funtion and observe the printout.
 */
func introduceMyself( ){
    
    print("I am Christian Vasquez and I love to play soccer in my free time.")
    print("I love the winter.")
}

introduceMyself()
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = arc4random_uniform(UInt32(5))` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts. Note that the random number generation will not work unless your function is declared after the `import Foundation` statement below. This is because the `arc4random_uniform(_:)` function is declared in the `Foundation` framework.
 */
import Foundation

func magic8Ball( ) {
    
    let number = Int.random(in: 0 ... 4)
    
    switch number {
    case 0 :
        print("Outlook not so good.")
    case 1 :
        print("Ask me later.")
    case 2 :
        print("All signs point to yes.")
    case 3 :
        print("NO")
    case 4 :
        print("Maybe")
        
    default: break;
    }
    
}


magic8Ball()
//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
