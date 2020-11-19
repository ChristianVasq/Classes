/*:
 ## Exercise - Computed Properties and Property Observers
 
 The `Rectangle` struct below has two properties, one for width and one for height. Add a computed property that computes the area of the rectangle (i.e. width * height). Create an instance of `Rectangle` and print the `area` property.
 */
struct Rectangle {
    var width: Int
    var height: Int

    
     var area: Int {
              return width * height
    
       }
}
var rectangle = Rectangle(width: 25, height: 120)
/*:
 In the `Height` struct below, height is represented in both inches and centimeters. However, if `heightInInches` is changed, `heightInCentimeters` should also adjust to match it. Add a `didSet` to each property that will check if the other property is what it should be, and if not, sets the proper value. If you set the value of the other property even though it already has the right value, you will end up with an infinite loop of each property setting the other.
 
 Create an instance of `Height` and then change one of its properties. Print out the other property to ensure that it was adjusted accordingly.
 */
struct Height {
    var heightInInches: Double {
        didSet {
            let inCm = heightInInches * 2.54
            if heightInCentimeters != inCm {
                heightInCentimeters = inCm
            }
        }
}
    var heightInCentimeters: Double {
        didSet {
            let inInches = heightInCentimeters / 2.54
            if heightInInches != inInches {
                heightInInches = inInches
            }
        }
    }

func willSet() {
       print("About to set height in inches to \(10)")
       print("About to set height in centimeters to \(50)")

   }
   func didSet() {
        if heightInInches > 15{
            print ("Added \(heightInInches - 15) inches")
        if heightInCentimeters > 20 {
                  print("Added \(heightInCentimeters - 20) centimeters")
       }

        }
    }
}
var myHeight = Height(heightInInches: 70, heightInCentimeters: 161)
print(myHeight)
//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Mile Times and Congratulations](@next)

