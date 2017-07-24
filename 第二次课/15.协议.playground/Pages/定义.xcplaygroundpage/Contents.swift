//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 协议：方法、属性或一段功能的蓝本。
//: - 任意类型都可以“领养”协议，从而实现蓝本； 也称“遵从”该协议。
//: - Swift的特色：面向协议编程， 鼓励多“领养”协议来替代类继承。 因为“领养”的代价远低于继承。
//空协议
protocol HouseAffordable {}
protocol CarAffordable {}



//: - “领养/遵从”若干个协议，用逗号分隔
struct Marriage: HouseAffordable, CarAffordable {
    
}

//: - 如果同时有继承和遵从协议，协议写在父类之后。
class Father {}

class Son: Father, HouseAffordable, CarAffordable {}
//: [>](@next)







