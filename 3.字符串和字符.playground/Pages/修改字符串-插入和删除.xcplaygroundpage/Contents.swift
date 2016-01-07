//: 修改字符串-插入和删除
var a = "小波说雨燕"
//: - 插入一个字符在指定索引,用insert方法
a.insert("!", atIndex: a.endIndex)

//: - insertContentsOf插入一个字符串.
let b = " 之Swift2"
a.insertContentsOf(b.characters, at: a.endIndex.predecessor())

//: - 删除一个指定索引的字符,用removeAtIndex方法.🌰删除字符串的最后一位.
a.removeAtIndex(a.endIndex.predecessor())

a


//: - 删除一个范围的子串,用removeRange方法.🌰删除之前添加的字符串
let 范围 = a.endIndex.advancedBy(-(b.characters.count))..<a.endIndex
a.removeRange(范围)

a


//: [比较字符串](@next)
