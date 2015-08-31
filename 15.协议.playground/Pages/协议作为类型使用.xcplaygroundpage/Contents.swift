//: 协议作为类型使用: 可用于参数类型/返回类型; 变量/常量/属性; 集合类型中的元素类型
//: - 🌰
protocol 产生随机的协议 {
    func 随机方法() ->Int
}

import Foundation

struct 随机体: 产生随机的协议 {
    func 随机方法() -> Int {
        return Int(arc4random())
    }
}

struct 骰子 {
    let 边: Int
    let 随机生成器: 产生随机的协议
    
    func 掷() -> Int {
        return 随机生成器.随机方法() % 边 + 1
    }
}

let 一颗骰子 = 骰子(边: 6, 随机生成器: 随机体())

for _ in 1...30 {
    print(一颗骰子.掷())
}

//: [协议作为代理](@next)
