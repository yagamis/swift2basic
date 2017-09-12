//: 💡协议扩展: 即使无源码权限下,给已有的类型添加协议.
protocol ToStr {
    var str: String {get}
}

extension Double: ToStr {
    var str: String {
        return "\(self)"
    }
}
//: - 既存实例会自动遵从刚添加的协议.
3.14.str

//: ⚡️扩展约束: 可以给要扩展的类型加上限定条件（where）。
extension ToStr where Self: CustomStringConvertible {
    var myDesc: String {
        return "值:" + self.description
    }
}

2.3.myDesc

//集合类型Collection也是一种协议, Element指代其中的元素
extension Collection where Element : CustomStringConvertible {
    var desc : String {
        let itemAsText = self.map{ $0.description }
        return "元素数: \(self.count),包含:" + itemAsText.joined(separator: ", ")
    }
}

let numbers = [1, 2, 3]
print(numbers.desc)

//: [>](@next)
