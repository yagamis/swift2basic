//: 数值类型转换:
//: 1.整型/浮点型变量与数字字面量是不同的
//: - 超出变量范围的赋值将会报错
let a:UInt8 = 250
let x:Float = 3.14
//: - 如要进行四则运算,前提:小转大(范围/精度)
let b = 3000
Int(a) + b
//a + b

let y = 1.414
Double(x) + y

//: 2.整型与浮点型转换
//: - 整型转浮点型
Int.max
Double.infinity

var z = Double(b) + y



//: - 浮点型转整型(小数部分被截断)
z = 3001.6

Int(z)



//: [类型别名>>](@next)
