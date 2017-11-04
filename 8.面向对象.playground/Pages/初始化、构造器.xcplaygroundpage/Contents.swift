//:  - 一个类必须给具体的值才能起作用，这叫初始化或实例化。
//:  - 构造器：一个类的初始化方法。 属性：一个类的"特征"。方法：一个类的“行为”。
class Duck {
    var color : String
    var foot : Int
    
    init(color: String, foot: Int) {
        self.color = color
        self.foot = foot
    }
    
    func growUp(color: String)  {
        self.color = color
    }
}

//生成了一只鸭，叫初始化。duck1是一个实例。
let duck1 = Duck(color: "yellow", foot: 2)
duck1.growUp(color: "white")

//如果给属性值，会生成一个默认的构造器init()，初始化时不能更改属性值
class DuckGreen {
    var color = "Green"
    var foot = 2
}
let duck2 = DuckGreen()


//结构体只需声明属性，构造器系统自动生成！
struct DuckRed {
    var color = "Red"
    var foot = 2
}
let duck3 = DuckRed()
let duck4 = DuckRed(color: "Deep Red", foot: 2)

//: [>](@next)
