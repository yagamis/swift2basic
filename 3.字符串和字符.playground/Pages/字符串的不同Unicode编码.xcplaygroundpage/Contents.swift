//: 字符串的不同Unicode编码: UTF-8,UTF-16,UTF-32. 每种编码的小块称为编码单元.

let 狗狗字符串 = "Dog‼🐶"

for 编码单元 in 狗狗字符串.utf8 {
    编码单元
}
展示utf8编码单元()

for 编码单元 in 狗狗字符串.utf16 {
    编码单元
}
展示utf16编码单元()


for 编码单元 in 狗狗字符串.unicodeScalars {
    编码单元.value
}

展示utf32编码单元()



//: [下一章 集合类型](@next)
