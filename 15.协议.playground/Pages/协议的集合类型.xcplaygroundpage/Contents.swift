//: 协议的集合类型: 因为协议可以作为类型使用, 可把遵从相同协议的实例放到一个 协议类型的数组.
import Foundation

let 数组: [CustomStringConvertible]  = [1,2,3,4,"文本"]

for 元素 in 数组 {
    print(元素)

}
//: [协议继承和默认实现](@next)
