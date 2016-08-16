//: 修改字符串-插入和删除
var a = "小波说雨燕"
//: - 插入一个字符
a.insert("!", at: a.endIndex)

//: - 插入一个字符串
let b = " 3天学会Swift 3"
a.insert(contentsOf: b.characters, at: a.characters.index(before: a.endIndex))

//: - 删除一个指定索引的字符,用removeAtIndex方法.🌰删除字符串的最后一位.
a.remove(at: a.characters.index(before: a.endIndex))

a


//: - 删除一个范围的子串,用removeRange方法.🌰删除之前添加的字符串
let startIndex = a.characters.index(a.endIndex, offsetBy: -(b.characters.count))
let 范围 = startIndex..<a.endIndex
a.removeSubrange(范围)

a


//: [比较字符串](@next)
