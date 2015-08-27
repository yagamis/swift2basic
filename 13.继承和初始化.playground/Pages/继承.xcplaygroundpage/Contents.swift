//: 继承：class之间的“父子”关系的体现。
//:
//:  - 1⃣️子类可以继承父类的属性和方法
class Viechle {
    var speed = 0
    var desc: String {
        return "时速是\(speed)km/h"
    }
    
    func makeNoise() {
        
    }
}

class Bike: Viechle {
    var hasBasket = false
}

let aBike = Bike()
aBike.speed = 40

aBike.desc
aBike.hasBasket
aBike.makeNoise()

//:  - 2⃣️子类可以根据需要，修改继承来的属性和方法（多态）

class CRH:Viechle {
    override func makeNoise() {
        print("嘟-嘟-嘟")
    }
}

let acrh = CRH()
acrh.makeNoise()


final class loverBike: Bike {
    var riders = 2
}


//:  [](@next)
