//: 方法协议: 定义时没有花括号执行体. 实现仅要求名称相同.
protocol Randomable {
    func number() -> Int
}

import Foundation

struct Dice: Randomable {
    func number() -> Int {
        return Int(arc4random() % 6) + 1
    }
}

let dice1 = Dice()

for _ in 1...10 {
    print(dice1.number())
}
//: [>](@next)
