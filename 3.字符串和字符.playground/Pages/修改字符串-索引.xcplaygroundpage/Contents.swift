//: 修改字符串. 通过字符串的各种方法和属性,或者下标对字符串进行修改或存储.

//: - 字符串索引: 每一个字符串值都有一个index类型,String.Index,对应其中每一个字符的位置.由于String是含有Unicode标量的,所以每个字符串不能直接用整型值来索引.

//: - 首字符索引 startIndex, endIndex是尾字符的下一个字符. 如果字符串为空, 首尾索引相等.
let 词 = "听琴声潇潇 该忘的忘不掉 红尘 困住我年少"

词.startIndex
词.endIndex
词.characters.count

//: - 确定索引后,用字符串的下标来访问相应的字符.
词[词.startIndex]

词[词.endIndex.predecessor()]

//: - 当前索引的下一个:successor方法; 前一个:predecessor方法
词[词.startIndex.successor().predecessor()]


//: - 使用全局函数 advance 向前进位.
let 自定义前进索引 = advance(词.startIndex, 7)

let 自定义后退索引 = advance(词.endIndex, -7)
词[自定义前进索引]
词[自定义后退索引]

//: - 使用字符串的characters属性的indices属性来创建一个索引范围,以便依次访问其中每一个字符串.
for 字 in 词.characters {
    print(字, appendNewline: false)
}
print("\n")

for 索引 in 词.characters.indices {
    print(词[索引], appendNewline: false)
    print(索引)
}

//: [修改字符串-插入和删除](@next)
