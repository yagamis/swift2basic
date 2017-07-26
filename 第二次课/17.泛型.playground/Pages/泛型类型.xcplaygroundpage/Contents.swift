//: 泛型类型: 可以自定义泛型类型, 如适应任何类型参数的类/结构体/枚举等, 像数组和字典一样.
//:  - 🌰创建一个类型: Stack(堆).
//:  - 堆使用规则: 后进（push）先出(pop)
//💡压一个值进堆顶，作为后进的值。
//💡堆顶的值可以被推出。

//Int堆
struct IntStack {
    var items = [Int]()
    
    mutating func push(item: Int)  {
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

//泛型Stack
struct Stack<T> {
    var items = [T]()
    
    mutating func push(item: T)  {
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
}

var topLangs = Stack<String>()
topLangs.push(item: "Swift")
topLangs.push(item: "Kotlin")
topLangs.push(item: "Python")
topLangs.pop()

var odds = Stack<Int>()
odds.push(item: 1)
odds.push(item: 3)
odds.push(item: 5)
odds.push(item: 7)
odds.pop()
odds



//作业：创建一个自定义的泛型类型(10分钟)

//nicky
import UIKit
// double queue
struct TQueue<T>
{
    var items = [T]()
}
extension TQueue
{
    mutating func add(item:T)
    {
        items.append(item)
    }
    mutating func remove() -> T
    {
        return items.removeFirst()
    }
}
var test = TQueue<String>()
test.add(item: "张三")
test.add(item: "李四")
test.add(item: "王五")
test.remove()
print(test)
//: [>](@next)
