//: while循环执行一系列操作,直到条件不成立.
//:   使用场合:执行次数未知。💡开发中极少使用。

//:  - 格式:while 条件 { 语句 }. 比如计算1到100的和。

var result = 0
let targetResult = 5050
var initNumber = 1

while result < targetResult {
    result += initNumber
    initNumber += 1
}
print(initNumber)




//: [>](@next)
