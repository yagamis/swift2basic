//: 使用泛型前
//:  - 🌰 打印不同类型的数组
let 文本组 = ["1", "2", "3"]
let 整数组 = [1, 2, 3]
let 小数组 = [1.1, 1.2, 1.3]

func 打印文本组(数组:[String]) {
    for 元素 in 数组 {
        print(元素)
    }
}

func 打印整数组(数组:[Int]) {
    for 元素 in 数组 {
        print(元素)
    }
}

func 打印小数组(数组:[Double]) {
    for 元素 in 数组 {
        print(元素)
    }
}

//: [泛型函数](@next)
