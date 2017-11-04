//: 泛型类型: 泛型不仅用于函数，也可以用于类型定义中。比如，一个适应任何类型参数的类/结构体/枚举等, 像数组和字典一样.
//:  - 🌰创建一个类型: Stack(堆).
//:  - 堆使用规则: 后进（push）先出(pop)
//💡压一个值进堆顶，作为后进的值。
//💡堆顶的值可以被推出。

//Int堆
struct IntStack {
    var items = [Int]()
    
    mutating func push(item: Int) {
        items.append(item)
    }
    
    mutating func pop() ->Int {
        return items.removeLast()
    }
}

//泛型Stack
struct Stack<T> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var topLang = Stack<String>()
topLang.push(item: "Swift")
topLang.push(item: "Kotlin")
topLang.push(item: "Javascript")
topLang.push(item: "Python")

let thisYearTop = topLang.pop()

topLang

//作业：创建一个自定义的泛型类型（30分钟）

//: [>](@next)
