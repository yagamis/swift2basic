//: 比较字符串: 字符串和字符相等性,前缀相等,后缀相等

//: - 字符串和字符相等性:用 == 或 != 操作符. Unicode扩展语素组合而成的字符与正式的单个字符被视为相等.
"aaa" != "bbb"
let x = "\u{1112}\u{1161}\u{11ab}"
"\u{1112}"
"\u{1161}"
"\u{11ab}"
let y = "\u{d55c}"

x == y

//: - 但不同语义的Unicode字符是不相等的. 比如英语的A和俄文的A虽然相似,但语义不同,不能视为相等. 中文的"对"和日文的"対"虽然语义相同,字型明显不同.


//: - 前缀和后缀相等: 用于检查一个字符串是否具有特定前缀和后缀. hasPrefix和hasSuffix
let a = "等额本息"
let b = "等额本金!"

let c = "等额"
let d = "!"

a.hasPrefix(c)
b.hasPrefix(c)

a.hasSuffix(d)
b.hasSuffix(d)



