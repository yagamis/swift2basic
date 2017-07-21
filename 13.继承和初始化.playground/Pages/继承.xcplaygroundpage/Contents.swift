//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
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

let bike = Bike()
bike.speed = 40

bike.desc
bike.hasBasket
bike.makeNoise()

//:  - 2⃣️子类可以根据需要，修改继承来的属性和方法（多态）

class FuXinHao: Viechle {
    override func makeNoise() {
        print("嘟-嘟-嘟")
    }
}

let fuxinhao1 = FuXinHao()
fuxinhao1.makeNoise()


final class loverBike: Bike {
    var riders = 2
}

