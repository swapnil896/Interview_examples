import UIKit

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

class Sparrow: Bird {
    
    let parrot: Bird = Parrot()
    func canFly() {
        print("CanFly inside Sparrow")
    }
}

let parrot = Parrot()
parrot.canFly()

let sparrow = Sparrow()
sparrow.canFly()

sparrow.parrot.canFly()
