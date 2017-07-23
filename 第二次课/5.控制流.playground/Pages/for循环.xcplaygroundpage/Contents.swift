//: for-in循环
//: 执行固定次数的操作,或操作一个序列(如数组)中的每一项.

//:  - 1⃣️序列中的每项都参与. for与in之间加一个代替每项的名.
let cities = ["beijing","shanghai","guangzhou"]

for city in cities {
    print(city)
}

//:  - 2⃣️只需循环固定次数,可以省略项名. 比如打印5次相同的文本.

for _ in 1...5 {
    print("5次")
}

var sum = 0

for i in 1...100 {
    sum += i
}
sum
//: [>](@next)
