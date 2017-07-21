//: 修改字符串-插入和删除
var a = "世界が終わるまでは"

//: - 插入一个字符
a.insert("，", at: a.endIndex)
a
//: - 插入一个字符串
let b = "離れることもない."
a.insert(contentsOf: b, at: a.endIndex)

var str = "Hello, playground"
var sa = "!!!!!"
str.insert(contentsOf: sa, at: str.endIndex)

//: - 删除指定位置的字符,用removeAtIndex方法.🌰删除字符串的最后一位.

//a.remove(at: a.index(before: a.endIndex))

//: - 删除一个范围的子串,用removeRange方法.🌰删除之前添加的字符串
let start = a.index(a.endIndex, offsetBy: -(b.count))
let bRange = start..<a.endIndex

a.removeSubrange(bRange)

a
//: [>](@next)
