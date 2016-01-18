//: for-in循环
//: 执行固定次数的操作,或操作一个序列(如数组)中的每一项.

//:  - 1⃣️序列中的每项都参与. for与in之间加一个代替每项的名.
let 学员组 = ["xiaobo","yuki","希达","喵星人","hazen"]

for 学员 in 学员组 {
    print(学员)
}

var result = 0

for number in 1...100 {
    result += number
}

result

//:  - 2⃣️只需循环固定次数,可以省略项名. 比如打印5次相同的文本.
for _ in 1...10 {
    print("小波你太帅了!")
}


//: [while循环综合运用](@next)
