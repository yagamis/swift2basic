//: 根据条件做不同的分支处理.if else

//: 循环中的判断
//: - continue 结束本次循环, break 结束整个循环
var temp = 40

if temp > 39 {
    print("今天不上班")
}

if temp > 30 {
    print("开空调")
} else {
    print("关空调")
}

for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i)
}

for i in 1...5 {
    if i == 3 {
        break
    }
    print(i)
}
//: [>](@next)
