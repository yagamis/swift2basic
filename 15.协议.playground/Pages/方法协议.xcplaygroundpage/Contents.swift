//: 方法协议: 定义时没有花括号执行体. 实现仅要求名称相同.
// - 类型方法协议: 前缀总是static
protocol 某协议 {
    static  func 一个类型方法()
}


class 某类: 某协议 {
    class func 一个类型方法() {
        print("可override的类型方法实现")
    }
}

某类.一个类型方法()

class 另一个类: 某协议 {
    static func 一个类型方法() {
        print("不可override的类型方法实现")
    }
}

另一个类.一个类型方法()


// - 实例方法协议
protocol 产生随机数的协议 {
    func 随机方法() -> Int
}

//产生随机整数的函数 arc4random, 需要引用基础库
import Foundation

struct 随机体: 产生随机数的协议 {
    func 随机方法() -> Int {
        return Int(arc4random())
    }
}

let 随机体1 = 随机体()
随机体1.随机方法()





// - 结构体/枚举的 "变异方法协议"
protocol 开关协议 {
     mutating func 切换状态()
}

enum 开关枚举: 开关协议 {
    case 开,关
    
     mutating func 切换状态() {
        switch self {
        case .关 :
            self = .开
        case .开:
            self = .关
        }
    }
}

var 门 = 开关枚举.关

门.切换状态()
门.切换状态()
//: [构造方法协议](@next)
