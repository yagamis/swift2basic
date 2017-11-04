//: 泛型函数: 让参数由单一类型，扩展成“广泛的”类型

//:  - 用一个占位符,取代原具体类型,函数名后紧跟<占位符>。占位符可以是任意变量名。

//打印任意类型数组的全部元素
func printAny<placeHolder>(array: [placeHolder]) {
    for element in array {
        print(element)
    }
}

printAny(array: [1, 3, 5])
printAny(array: [3.141, 1.414, 2.718])
printAny(array: ["Swift", "Kotlin", "Javascript"])

//: [>](@next)
