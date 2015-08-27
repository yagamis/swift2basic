//: 布尔型: Bool  用来表示逻辑上的"真"或"假"
//: - 只有2个值,true 和 false
let 北京是首都 = true


//: - 通常在逻辑判断中使用, 如 if语句(流程控制)
var 预算 = 5000

var Mac电脑价格 = 14_000

let 买得起Mac电脑 = (预算 - Mac电脑价格) > 0

if 买得起Mac电脑 {
    print("hi,我买得起Mac电脑!")
} else {
    print("哎,预算不够啊!还差\(Mac电脑价格 - 预算)")
}

//: [元组](@next)
