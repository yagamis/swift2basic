//: 泛型函数: 让参数由单一类型，扩展成“广泛的”类型

//:  - 用一个占位符,取代原具体类型,函数名后紧跟<占位符>。占位符可以是任意变量名。
func printInt(array: [Int]) {
    for e in array {
        print(e)
    }
}


//打印任意类型数组的全部元素
func printAny<类型占位符>(array: [类型占位符]) {
    for e in array {
        print(e)
    }
}

let odds = [1, 3, 5, 7]
let mathConstants = [3.141, 1.414, 2.718]
let topLangs = ["Swift", "Kotlin", "Javascript", "Python"]

printAny(array: odds)
printAny(array: mathConstants)
printAny(array: topLangs)
//: [>](@next)
