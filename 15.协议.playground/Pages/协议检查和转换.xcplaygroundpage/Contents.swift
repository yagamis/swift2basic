//: 协议检查和转换: 使用is和as类型转换操作符来检查协议遵从与否,或转换成特定的协议.
import UIKit

protocol Coder {
    var name :String {get set}
    var updating: String { get }
}

struct AndroidCoder: Coder {
    var name: String
    
    var updating: String {
        return "安卓程序员学iOS开发"
    }
}


struct DotNotCoder: Coder {
    var name: String
    var updating: String {
        return ".NET程序员学Swift 3"
    }
}

struct NewBie {
    var name: String
}

let a = AndroidCoder(name: "茅屋秋风哥")
let d = DotNotCoder(name: "yuki")
let x = NewBie(name: "小波")

let coders:[Any] = [a,d,x]

for coder in coders {
    if let coder1 = coder as? Coder {
        print(coder1.updating)
    } else {
        print("你不是程序员!你会很辛苦的!")
    }
    
    if let xiaobo = coder as? NewBie {
        print("你是",xiaobo.name)
    }
    
}
