//: for-in循环
//: 操作序列(如数组、集合、字典)中的每一项,或执行特定次数的循环操作。

for i in 1...5 {
    print(i)
}

//:  - 序列中的每项都参与. for与in之间加一个代替每项的名.
let cities = ["北","上","广"]
for city in cities {
    print(city)
}

var airports = ["PVG":"浦东机场", "CHU":"周水子机场", "DUB":"Dublin Airport"]
//:  - 循环一个字典, 因为键值对有2个元素, 用元组变量.
for (key,value) in airports {
    print(key,value)
}

//:  - 单独使用其中键或值,使用 keys 或 values
for value in airports.values {
    print(value)
}


//: [>](@next)
