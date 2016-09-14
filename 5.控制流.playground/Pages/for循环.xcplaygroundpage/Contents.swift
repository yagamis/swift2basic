//: for-in循环
//: 执行固定次数的操作,或操作一个序列(如数组)中的每一项.

//:  - 1⃣️序列中的每项都参与. for与in之间加一个代替每项的名.
let stars = ["Ying","河池VR","小书霸"]

for star in stars {
    print(star)
}

var result = 0

for number in 1...10 {
    result += number
}

result

//:  - 2⃣️只需循环固定次数,可以省略项名. 比如打印5次相同的文本.
for _ in 1...5 {
    print("回到洪荒去支配去操纵")
}


//: [while循环综合运用](@next)
