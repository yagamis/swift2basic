//: 根据条件做不同的分支处理.if else

//: 循环中的判断
//: - continue 结束本次循环, break 结束整个循环
var temp = 23

if temp > 35 {
    print("开空调")
} else {
    print("不开空调")
}

var money = false

if money {
    print("买车买房")
} else {
    print("注孤生")
}

for i in 1...10 {
    if i == 3 {
        continue
    }
    print(i)
}
//: [>](@next)
