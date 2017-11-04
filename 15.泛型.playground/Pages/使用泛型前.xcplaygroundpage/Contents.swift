//: 使用泛型前
//:  - 🌰 打印不同类型的数组
let topLangs = ["Swift", "Kotlin", "Javascript"]
let odds = [1, 3, 5]
let machConstants = [3.141, 1.414, 2.718]

func printString(array:[String]) {
    for e in array {
        print(e)
    }
}

func printInt(array: [Int]) {
    for e in array {
        print(e)
    }
}

func printDouble(array: [Double]) {
    for e in array {
        print(e)
    }
}

//: [>](@next)
