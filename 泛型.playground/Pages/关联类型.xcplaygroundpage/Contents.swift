//: 关联类型:定义协议时,有时需要定义一个或多个关联类型作辅助. 关联类型有一个别名.
protocol 容器 {
    //未指定是谁的别名, 留给遵从此协议的类型提供
    typealias ItemType
    
    //别名也用于方法和属性,推测参数或返回值类型
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

struct IntStack : 容器{
    var items = [Int]()
    
    mutating func push(item: Int) {
        items.append(item)
    }
    
    mutating func pop(item: Int) ->Int {
        return items.removeLast()
    }
    
    //别名类型自动推测,无需明示
    //typealias ItemType = Int
    
    mutating func append(item: Int) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i: Int) -> Int {
        return items[i]
    }  
}

//Element自动推测
struct Stack<Element>: 容器 {
    var items = [Element]()
    
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop(item: Element) ->Element {
        return items.removeLast()
    }
    
    mutating func append(item: Element) {
        self.push(item)
    }
    
    var count: Int {
        return items.count
    }
    
    subscript(i:Int) ->Element {
        return items[i]
    }
}

//:  - 扩展一个既有类型来详述关联类型.
//🌰Swift的数组已实现append,count,下标, 可以直接遵从容器协议.
extension Array: 容器 {}



//: [关联类型的约束](@next)
