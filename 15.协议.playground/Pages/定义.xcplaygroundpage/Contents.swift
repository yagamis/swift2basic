//: ----
//:  - [小波说Swift 2](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 协议：方法、属性或一段功能的蓝本。
//: - 协议可被类、结构体和枚举“领养”从而“长大成人”.
//: - 任何满足协议的“需求”的类型，被称为“遵从”该协议。
protocol 某协议 {
    
}

protocol 另一个协议 {
    
}

//: - “领养/遵从”若干个协议，用逗号分隔
struct 某个结构体: 某协议, 另一个协议 {
    
}

//: - 超类在协议之前
class 父类 {
    
}

class 子类: 父类, 某协议, 另一个协议 {
    
}

//: [属性协议](@next)







