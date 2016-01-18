//: 早退语句: 在必需条件不满足的早期阶段退出执行.
//:  语句关键字 guard, 与if相似. 属于条件强调意味很浓的语句.
//:  guard let 与 if let相似,用于可选类型.guard有助于提升代码可读性.
var hasKey = true
var credit : Int? = 5

func 打的() {
    guard hasKey else {
        return
    }
    
    guard let mycredit = credit where mycredit >= 6 else{
        return
    }
    
    print("欢迎乘坐本公司出租车!")
}

打的()
//: [if和Switch语句](@next)
