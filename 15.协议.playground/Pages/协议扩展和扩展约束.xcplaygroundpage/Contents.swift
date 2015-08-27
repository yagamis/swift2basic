//: 💡协议扩展: 即使无源码权限下,给已有的类添加协议.
//: - 既存实例会自动遵从添加了的协议.
let a = 1

protocol showIntHint {
    func hint() -> String
}

extension Int: showIntHint {
    func hint() -> String {
        return "整数:\(self)"
    }
}

a.hint()

//: - 如果一个类型预遵从了协议, 可以直接扩展协议
1.description

struct MyText {
    var name: String
    
    var description: String {
        return name
    }
}

extension MyText: CustomStringConvertible { }

let text1 = MyText(name: "小波说Swift")

print(text1)

//: ⚡️扩展约束: 可以在扩展协议的同时,加上限定条件. where语句
import Foundation
extension showIntHint where Self: CustomStringConvertible {
    func hint2() ->String {
        return "扩展约束提示,整数:" + self.description
    }
}
1.hint2()

extension CollectionType where Generator.Element: CustomStringConvertible {
    func newDesc() -> String {
        let itemAsText = self.map { $0.description }
        return "元素数:\(self.count) 值:" + itemAsText.joinWithSeparator(",")
    }
}

let 整数组1 = [1, 2, 3]
整数组1.newDesc()


//: [协议的集合类型](@next)
