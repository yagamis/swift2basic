//: 早退语句: 在继续执行所必需条件不满足的一开始,就退出执行.通常用在函数中.
//:  语句关键字 guard, 与if相似. 属于条件强调意味很浓的语句.
//:  guard let 与 if let相似,用于可选类型.guard用于提升代码可读性.
func 某会所打招呼(人: [String:String]) {
    guard let 名 = 人["名"] else {
        return
    }
    
    print("你好,\(名)!")
    
    guard let 钱 = 人["钱"] else {
        print("对不起,我们这欢迎的是尊贵的VIP客户!")
        return
    }
    
    print("欢迎光临本店!感谢您消费了\(钱)元,您已经成为我们的VIP客户!")
}



某会所打招呼(["名":"小波"])

某会所打招呼(["名":"老镇","钱":"2000"])



//: [if和Switch语句](@next)
