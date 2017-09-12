//: 💡协议继承: 一个协议可以继承若干个协议,并可以在继承基础上增加新需求。(面向协议编程)
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



//: [>](@next)
