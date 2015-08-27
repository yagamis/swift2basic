//: 花川学院
//:
//: ----
//:
//:  - Swift 2.0基础语法 by 小波
//:  - [学习路线图](http://www.hcxy.me/map)
//:  - 课件源码：[github.com/yagamis/swift2basic](http://github.com/yagamis/swift2basic)
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
class 某类 {
    
}

class 某子类: 某类, 某协议, 另一个协议 {
    
}


//: [属性协议](@next)







