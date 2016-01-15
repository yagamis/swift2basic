//: 早退语句: 在必需条件不满足的早期阶段退出执行.
//:  语句关键字 guard, 与if相似. 属于条件强调意味很浓的语句.
//:  guard let 与 if let相似,用于可选类型.guard有助于提升代码可读性.

var coin = true
var credit : Int? = 3

func 坐公交() {
    guard coin else {
        return
    }
    
    guard let _ = credit else {
        return
    }
    
    print("欢迎乘坐本公司公交车!")
}

坐公交()




//: [if和Switch语句](@next)
