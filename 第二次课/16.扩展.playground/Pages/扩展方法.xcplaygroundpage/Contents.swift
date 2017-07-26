//: 扩展方法: 为既有类型添加方法
extension Int {
    func repeatDo(closure: () -> Void )  {
        for _ in 1...self {
            closure()
        }
    }
}

5.repeatDo {
    print("今天上课的主题是扩展和泛型！")
}
//: - 如果方法要结修改结构体(或枚举)实例的属性时，要加mutating关键字
extension Int {
    mutating func square()  {
        self *= self
    }
}

var x = 6
x.square()
x


//作业：根据你的理解和想象，对String、Int、Double、集合类型等基本类型扩展几个方法和属性（30分钟）

//: [>](@next)
