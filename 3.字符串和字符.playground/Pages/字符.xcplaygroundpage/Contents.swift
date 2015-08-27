//: 字符
//:  - 用Character类型来定义字符串.

import Foundation
let 一个字符:Character = "a"



extension String {
    func add(step:Int) -> String {
        return Character(UnicodeScalar(self.utf8.first!.advancedBy(step))).debugDescription
    }
}

let b = 1...3

let c = "a"..."z"

for a in b {
    print(a)
}

let cc: ClosedInterval = 1...5



//:  - 可以对一个字符串的characters属性进行循环,来访问其中单个字符.
let a = "hello 树先生!"


for 字 in a.characters {
    print(字)
}


//: [连接字符串和字符](@next)
