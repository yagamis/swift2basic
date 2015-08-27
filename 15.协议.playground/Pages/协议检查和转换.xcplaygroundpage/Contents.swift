//: 协议检查和转换: 使用is和as类型转换操作符来检查协议遵从与否,或转换成特定的协议.
import UIKit

protocol 程序员 {
    var name: String {get set}
    var 学新技术: String {get}
}

struct 安卓程序员: 程序员 {
    var name:String
    
    var 学新技术: String {
        return "安卓程序员学iOS开发"
    }
}

struct OC程序员: 程序员 {
    var name: String
    var 学新技术: String {
        return "OC程序员尝试了解Swift 2.0"
    }
}

struct DOTNET程序员: 程序员 {
    var name: String
    var 学新技术: String {
        return "PHP程序员学Swift 2.0转型做iOS开发"
    }
}

struct 酱油程序员 {
    var name: String
    
}

let androidcoder1 = 安卓程序员(name: "茅屋为秋风所破歌")
let occoder1 = OC程序员(name: "希达")
let dotnetcoder1 = DOTNET程序员(name: "yuki")
let newbie = 酱油程序员(name: "小波")

let coders:[Any] = [
    androidcoder1,
    occoder1,
    dotnetcoder1,
    newbie
]

for coder in coders {
    if let coder = coder as? 程序员 {
        print(coder.学新技术)
    } else {
        print("你不是一个真正的程序员!")
    }
}

//: [提供默认实现](@next)
