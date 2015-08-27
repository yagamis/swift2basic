//: 修改字符串-插入和删除

//: - 插入一个字符在指定索引,用insert方法
var 词 = "站在山岗上"

词.insert("我", atIndex: 词.startIndex)
词.insert("!", atIndex: 词.endIndex)

//: - 把另一个字符串插入到指定的索引,用splice方法.在歌词后插入作者.
词.splice("-张惠妹".characters, atIndex: 词.endIndex.predecessor())



//: - 删除一个指定索引的字符,用removeAtIndex方法.🌰删除字符串的最后一位.
词.removeAtIndex(词.endIndex.predecessor())
词

//: - 删除一个范围的子串,用removeRange方法.🌰删除后2位
let 范围 = advance(词.endIndex, -2)..<词.endIndex

词.removeRange(范围)

//: [比较字符串](@next)
