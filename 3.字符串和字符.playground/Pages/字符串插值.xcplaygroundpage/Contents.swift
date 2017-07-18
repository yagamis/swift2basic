//: 字符串插值：把常量/变量/字面量/表达式插入到字符串形成一个模板。
//: 所以也叫字符串模板(Kotlin)。

let name = "李白"
let type = "G"
let number = 158
let departure = "长安"
let destination = "洛阳"
let price = 380

let msg = """
尊敬的\(name)乘客,您已订购\(type)\(number)
\(departure)到\(destination)的往返票,
需支付\(price * 2)元。
"""


//: [>](@next)
