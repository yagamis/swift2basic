//: 💡协议继承: 一个协议可以继承若干个协议,并可以在继承基础上增加新需求. 对Class/结构体/枚举进行协议扩展,相当于实现了多重继承。(面向协议编程)
protocol Nameable {
    var name : String { get }
}

protocol Ageable {
    var age : Int { get }
}

protocol LegalCitizen: Nameable, Ageable {
    var idcardNumber: Int { get }
}

struct Coder: LegalCitizen {
    var name: String
    var age: Int
    var idcardNumber: Int
}

protocol Skilled {
    var skill : String { get }
}

extension Coder: Skilled {
    var skill : String {
        return "我会Swift编程！"
    }
}

//: [>](@next)
