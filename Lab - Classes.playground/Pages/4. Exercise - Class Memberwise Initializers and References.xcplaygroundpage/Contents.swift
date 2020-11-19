/*:
 ## Exercise - Class Memberwise Initializers and References
 
 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. The base class `Spaceship` and subclasses `Fighter` and `ShieldedShip` have been provided for you below. You will use these to complete the exercises.
 */
class Spaceship {
    var name: String
    var health: Int
    var position: Int

    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
    }
    
    init(initialName : String, initialHealth : Int, initialPosition : Int ) {
        name = initialName
        health = initialHealth
        position = initialPosition
    }
    
    
    
    
}

class Fighter: Spaceship {
    var weapon: String = ""
    var remainingFirePower: Int = 0
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
    
    init(initialName : String, initialHealth : Int, initialPosition : Int, initialWeapon : String, initialFirePower : Int) {
            weapon = initialWeapon
            remainingFirePower = initialFirePower
        super.init(initialName: initialName, initialHealth: initialHealth, initialPosition: initialPosition)
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int = 0
    
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
    
    init(initialName : String, initialHealth : Int, initialPosition : Int, initialWeapon : String, initialFirePower : Int, initialShieldStrength: Int) {
        
        shieldStrength = initialShieldStrength
        super.init(initialName: initialName, initialHealth: initialHealth, initialPosition: initialPosition, initialWeapon: initialWeapon, initialFirePower: initialFirePower)
    }
    
}
/*:
 Note that each class above has an error by the class declaration that says "Class has no initializers." Unlike structs, classes do not come with memberwise initializers because the standard memberwise initializers don't always play nicely with inheritance. You can get rid of the error by providing default values for everything, but it is common and better practice to simply write your own initializer. Go to the declaration of `Spaceship` and add an initializer that takes in an argument for each property on `Spaceship` and sets the properties accordingly. 
 
 Then create an instance of `Spaceship` below called `falcon`. Use the memberwise initializer you just created. The ship's name should be "Falcon."
 */
let falcon = Spaceship(initialName: "falcon", initialHealth: 1000, initialPosition: 5)


/*:
 Writing initializers for subclasses can get tricky. Your initializer needs to not only set the properties declared on the subclass, but also set all of the uninitialized properties on classes that it inherits from. Go to the declaration of `Fighter` and write an initializer that takes an argument for each property on `Fighter` and for each property on `Spaceship`. Set the properties accordingly. (Hint: you can call through to a superclass' initializer with `super.init` *after* you initialize all of the properties on the subclass).
 
 Then create an instance of `Fighter` below called `destroyer`. Use the memberwise initializer you just created. The ship's name should be "Destroyer."
 */
let destroyer = Fighter(initialName: "Destroyer", initialHealth: 1000, initialPosition: 0, initialWeapon: "Cannon", initialFirePower: 765)

/*:
 Now go add an initializer to `ShieldedShip` that takes an argument for each property on `ShieldedShip`, `Fighter`, and `Spaceship`, and sets the properties accordingly. Remember that you can call through to the initializer on `Fighter` using `super.init`.
 
 Then create an instance of `ShieldedShip` below called `defender`. Use the memberwise initializer you just created. The ship's name should be "Defender."
 */
let defender = ShieldedShip(initialName: "Defender", initialHealth: 7777, initialPosition: 8, initialWeapon: "Gattling Gun", initialFirePower: 888, initialShieldStrength: 3)

/*:
 Create a new instance of `Spaceship` called `sameShip` and set it equal to `falcon`. Print out the position of `sameShip` and `falcon`, then call `moveLeft()` on `sameShip` and print out the position of `sameShip` and `falcon` again. Did both positions change? Why? If both were structs instead of classes, would it be the same? Why or why not? Provide your answer in a comment or print statement below.
 */
let sameShip = falcon
print("Position of sameShip is \(sameShip.position)")
print("Position of falcon is \(falcon.position)")

sameShip.moveLeft()

print("Position of sameShip is \(sameShip.position)")
print("Position of falcon is \(falcon.position)")

print("Answer: Yes, The position of both changed. This is because of the ship is moving positions along with the falcon.")
print("if both of the classes were structs then the code will be different.")

/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 4 of 4
