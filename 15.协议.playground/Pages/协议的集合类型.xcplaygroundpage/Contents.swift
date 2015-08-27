//: 协议的集合类型: 因为协议可以作为类型使用, 可把遵从相同协议的实例放到一个 协议类型的数组.
import Foundation


let 一些可打印的东西: [CustomStringConvertible] = ["xiaobo",2016, 13.14]

for 元素 in 一些可打印的东西 {
    print(元素)
}

//: [协议继承和默认实现](@next)
