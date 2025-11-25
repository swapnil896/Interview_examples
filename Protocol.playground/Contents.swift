import UIKit

/*
Question :- How can we create default implementation for protocol
Ans :- using extensions
 
Q :- So, if a protocol has default implementation via extension, and you conform that protocol to a class, and implement the protocol method again, then which implementation will work
 A :- When conformed to a class, then the class's implementation of that protocol method will take over (Override)
 
 Q :- Now you create a second class, and you create the instance of first class, but with protocol type, then which implementation will take over
 A :- Implementation of first class
 */

protocol Bird {
    func canFly()
}

extension Bird {
    
    func canFly() {
        print("CanFly inside Bird extension")
    }
}

class Parrot: Bird {
    
    func canFly() {
        print("CanFly inside Parrot")
    }
}

class Sparrow {
    
    let parrot: Bird = Parrot()
    func canFly() {
        print("CanFly inside Sparrow")
    }
}

let parrot = Parrot()
parrot.canFly()

let sparrow = Sparrow()
sparrow.parrot.canFly()
