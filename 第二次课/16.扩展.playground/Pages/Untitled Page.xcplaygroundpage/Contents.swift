//: [Previous](@previous)
import Foundation

extension String{
    func validateEmail() ->Bool{
   
        //可选类型的 第一种写法，直接判断nil
//        let rang = self.range(of: "@")
//        if(rang != nil){
//            return true
//        }
//        else{
//            return false
//        }
        
        //iflet绑定来判断 可选类型
        if let _ = self.range(of: "@") {
            return true
        } else {
            return false
        }
    }
}
let email = "tuzi888@qqcom"
if email.validateEmail(){
    print("邮箱地址为真")
}else{
    print("邮箱地址为假")
}



extension String {
   func length() -> Int {
        return self.count
    }
}

var str1 = "swift"
str1.length()
str1.count

//写的比较简单的一个
extension Int {
    var add: Int {return self + 5}
    var sub: Int {return self - 10}
}

let a = 3.add
a
let s = 20.sub
s


import UIKit
// int extension
extension Int
{
    var cal:String {
        return "计算属性的值\(self)"
    }
    
    mutating func toStringVal() -> String
    {
        return "\(self)"
    }
    
}
var testInt = 6
let calInt = testInt.cal
let intToString = testInt.toStringVal()
//: [Next](@next)
