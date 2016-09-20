//: while循环执行一系列操作,直到条件不成立.
//:   使用场合:执行次数未知

//:  - 格式:while 条件 { 语句 }. 比如计算1到100的和。
var i =  1
var sum = 0

while i <= 100 {
    sum += i
    i += 1
}

sum
i

var j = 1
while j < 10 {
    print("while循环的示例")
    j += 1
}

//: [控制转移语句](@next)
