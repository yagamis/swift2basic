//: 扩展方法: 为既有类型添加方法
extension Int {
    func repeatDo(closure: () -> Void) {
        for _ in 1...self {
            closure()
        }
    }
}

4.repeatDo {
    print("3天学会Swift 4 之扩展")
}

//: - 如果方法要结修改结构体(或枚举)实例的属性时，要加mutating关键字
extension Int {
    mutating func square() {
        self *= self
    }
}

var a = 3
a.square()
a

//作业：根据你的理解和想象，对String、Int、Double、集合类型等基本类型扩展几个方法和属性（30分钟）

//: [>](@next)
