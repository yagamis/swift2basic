//: 修改字符串. 通过字符串的各种方法和属性,其中一种方法是使用索引.

//: - 字符串索引: 索引对应其中每一个字符的位置.
let a = "小波说雨燕 3天学会Swift 3，www.xiaoboswift.com"

//: - 首字符索引 startIndex, endIndex是尾字符后一个位置.
a.startIndex
a.endIndex

//: - 确定索引后,用下标来访问相应字符
a[a.startIndex]


//: - 用字符串的字符数组的index(after:)或index(before)引用后一个或前一个索引
a[a.characters.index(after: a.startIndex)]
a[a.characters.index(before: a.endIndex)]

//a[a.startIndex.successor()]

//: - 用字符串的字符数组的index(_:offsetBy:)方法向前进位
a[a.characters.index(a.startIndex, offsetBy: 3)]


//: - 字符串characters属性的indices属性表示索引的区间.
for b in a.characters.indices {
//    print(a[b])
    print(a[b], terminator: "-")
}

//: [修改字符串-插入和删除](@next)
