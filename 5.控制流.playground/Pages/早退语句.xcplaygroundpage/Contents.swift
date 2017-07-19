//: 早退语句: 在必需条件不满足的早期阶段退出执行.
//:  语句关键字 guard, 与if相似. 属于条件强调意味很浓的语句.
//:  guard let 与 if let相似,用于可选类型. guard有助于提升代码可读性.
var isOrderFromApp = true
var credit : Int? = 7

func callTaxi() {
    guard isOrderFromApp else {
        return
    }
    
    guard let mycredit = credit , mycredit >= 6 else{
        return
    }
    
    print("打车成功!")
}

callTaxi()

//: [>](@next)
