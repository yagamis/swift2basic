//: 协议作为类型使用: 可用于参数类型/返回类型; 变量/常量/属性; 集合类型中的元素类型
protocol Demo {
    func showType()
}

struct A: Demo {
    func showType() {
        print("struct A")
    }
}

class B: Demo {
    func showType() {
        print("class b")
    }
}

let a = A()
let b = B()

let arrayDemo: [Demo] = [a, b]

//: [>](@next)
