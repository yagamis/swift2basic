//: ----
//:  - [小波说雨燕 3天学会Swift 3](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 扩展: 对既有的类/结构体/枚举/协议添加新功能,即使无权查看这些类型的源代码(也叫:追加建模). 扩展没有名称.
//: - 作用:增加计算属性; 定义方法; 提供新构造器; 定义下标; 定义和使用新嵌套类型; 让已有类型遵从若干协议.
//语法
extension 某个类型 {
    //新功能加在这
}

//遵从若干个协议
extension 某个类型: 某协议, 另一个协议 {
    //实现协议的要求
}



struct 某个类型 {
    
}
protocol 某协议 {}
protocol 另一个协议 {}
//: [扩展计算属性](@next)
