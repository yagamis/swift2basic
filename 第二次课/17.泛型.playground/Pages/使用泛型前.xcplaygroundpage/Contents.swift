//: 使用泛型前
//:  - 🌰 打印不同类型的数组
let topLangs = ["Swift", "Kotlin", "Javascript", "Python"]

func printString(array: [String]) {
    for e in array {
        print(e)
    }
}

printString(array: topLangs)


let odds = [1, 3, 5, 7]

func printInt(array: [Int]) {
    for e in array {
        print(e)
    }
}

printInt(array: odds)

let mathConstants = [3.141, 1.414, 2.718]

func printDouble(array: [Double]) {
    for e in array {
        print(e)
    }
}

printDouble(array: mathConstants)
//: [>](@next)
