//: 扩展方法: 给既有的类型添加 实例方法 或 类型方法.

//: - 实例方法
extension Int {
    //闭包
    func 重复执行(要执行的闭包: () -> Void) {
        for _ in 1...self {
            要执行的闭包()
        }
    }
}

4.重复执行 { () -> Void in
    print("小波说Swift 2 - 9月9日正式版")
}

3.重复执行 { () -> Void in
    print("小波说Swift 2")
}
//: - 变异实例方法(结构体/枚举修改本身属性或实例时)
extension Int {
    mutating func square() {
        self *= self
    }
}

var a = 3
a.square()
a



//: [扩展下标](@next)
