//: 协议组合: 多个协议临时组合在一起的类型. 形式: 协议1 & 协议2 & ...>
protocol Ageable {
    var age : Int { get }
}

protocol Nameable {
    var fullName: String { get }
}

struct Student: Ageable, Nameable {
    var age: Int
    var fullName: String
}

//参数只要是同时遵从年龄和姓名协议的类型即可
func wish(person: Ageable & Nameable)  {
    print("祝",person.fullName,person.age,"岁生日快乐!")
}

let hongyi = Student(age: 22, fullName: "弘毅")
wish(person: hongyi)

//: [>](@next)
