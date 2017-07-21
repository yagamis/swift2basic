//: 修改字符串. 通过字符串的各种方法和属性,使用索引最为便捷.

//: - 字符串索引: 索引对应其中每一个字符的位置.
let a = """
海客谈瀛洲
烟涛微茫信难求
越人语天姥
云霞明灭或可睹
天姥连天向天横
势拔五岳掩赤城
天台一万八千丈
对此欲倒东南倾
"""


//: - 首字符索引 startIndex, endIndex是尾字符后一个位置.
a.startIndex
a.endIndex
a.count
//: - 确定索引后,用下标来访问相应字符
a[a.startIndex]


//: - 用字符串的index(after:)或index(before)引用后一个或前一个索引
a[a.index(after: a.startIndex)]
a[a.index(before: a.endIndex)]
//: - 用字符串的index(_:offsetBy:)方法向前进位
a[a.index(a.startIndex, offsetBy: 3)]
a[a.index(a.endIndex, offsetBy: -3)]

//: - 字符串的indices属性表示索引的区间.
for index in a.indices {
    print(a[index])
}

for c in a {
    print(c)
}

//: [>](@next)
