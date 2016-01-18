//: 参数和返回值: 可以无参数无返回值，也可以是其他函数作为参数

//:  - 无参数无返回值 .一般用于执行一系列操作,不需要结果.
func 问候() {
    print("欢迎收看小波说雨燕2016")
    print("之Swift 2")
    print("www.hcxy.me")
}

问候()


//:  - 多返回值（使用元组）
func maxMin() -> (Int, Int) {
    return (Int.max, Int.min)
}

maxMin().0
maxMin().1



//:  - 参数以 名称: 类型 列出, 多个参数间用逗号分隔
func add(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}

add(3, b: 4, c: 5)



//:  - 可以给某个参数以默认值
//给一个整型的值加2
func add2(a: Int = 2, b: Int) -> Int {
    return a + b
}

add2(b: 5)



//:  - 不定数参数：在参数类型后加...
//求和函数
func sum(numbers: Int...) -> Int {
    var result = 0
    
    for number in numbers {
        result += number
    }
    
    return result
}


sum(1,2,3,4,5,6,7,8)

//: [函数类型](@next)
