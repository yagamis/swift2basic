//: 根据条件做不同的分支处理.if else
var temp = 25

if temp > 28 {
    print("自动开空调")
} else {
    print("不用开空调")
}

//: 循环中的判断
//: - continue 结束本次循环, break 结束整个循环
for i in 1...5 {
    if i == 3 {
        break
    }
    print(i)
}

//: [>](@next)
