//: 关联类型的约束: 对一个关联类型进行协议遵从性或类型一致性检查,在参数列表后紧跟where判断语句.
protocol 容器 {
    //未指定是谁的别名, 留给遵从此协议的类型提供
    typealias ItemType
    
    //别名也用于方法和属性,推测参数或返回值类型
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}

func 完全匹配<C1: 容器, C2: 容器 where C1.ItemType == C2.ItemType, C1.ItemType: Equatable >(容器1: C1, 容器2: C2) -> Bool {
    if 容器1.count != 容器2.count {
        return false
    }
    
    for i in 0..<容器1.count where 容器1[i] != 容器2[i] {
        return false
    }
    
    return true
}

extension Array: 容器{}

var array1 = [1,2,3]
var array2 = [Int]()
array2.append(1)
array2.append(2)
array2.append(3)

完全匹配(array2, 容器2: array1)


