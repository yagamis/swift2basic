//: 修改字符串. 通过字符串的各种方法和属性,其中一种方法是使用索引.

//: - 字符串索引: 索引对应其中每一个字符的位置.
let a = "小波说雨燕 之 Swift 2 , 花川学院首发"

//: - 首字符索引 startIndex, endIndex是尾字符后一个位置.
a.startIndex
a.endIndex

//: - 确定索引后,用下标来访问相应字符
a[a.startIndex]
a[a.endIndex.predecessor()]

//: - successor和predecessor代表前一个和后一个索引
a[a.startIndex.successor()]

//: - 使用索引的 advanceBy方法向前进位
a[a.startIndex.advancedBy(3)]
a[a.endIndex.advancedBy(-2)]

//: - 字符串characters属性的indices属性表示索引的区间.
for b in a.characters.indices {
//    print(a[b])
    print(a[b], terminator: "-")
}

//: [修改字符串-插入和删除](@next)
