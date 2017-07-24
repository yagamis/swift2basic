//: 协议作为类型使用: 可用于参数类型/返回类型; 变量/常量/属性; 集合类型中的元素类型
protocol Demo {
    func showType()
}


struct AA : Demo {
    var name = "AAAAA"
    
    func showType() {
        print("struct AA")
    }
}

struct BB : Demo {
    func showType() {
        print("struct BB")
    }
    
    func showmyname()  {
        print("my name is BB")
    }
}

let aa1 = AA()
let bb1 = BB()

let array1 : [Demo] = [aa1, bb1]

let numbers: [Any] = [1,2,"3.2",aa1]



//: [>](@next)
