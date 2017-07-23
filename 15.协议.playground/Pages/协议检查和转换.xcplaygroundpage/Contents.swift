//: 协议检查和转换: 使用is和as类型转换操作符来检查协议遵从与否,或转换成特定的协议.
protocol Coder {
    var skill : String { get }
}

protocol Nameable {
    var name: String { get }
}

struct DotnetCoder: Coder, Nameable {
    var name: String
    var skill: String {
        return "C#"
    }
}

struct PhpCoder: Coder, Nameable {
    var name: String
    var skill: String {
        return "PHP"
    }
}

struct Beginner: Nameable {
    var name: String
}

let bossXu = DotnetCoder(name: "陈总")
let bossChen = PhpCoder(name: "徐总")
let beginner = Beginner(name: "小波")

let coders : [Any] = [bossXu, bossChen, beginner]

for coder in coders {
    if let coder1 = coder as? Coder & Nameable  {
        print(coder1.skill + "老司机" + coder1.name)
    } else {
        print("你根本不是司机!")
    }
}
