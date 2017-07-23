//: 泛型函数: 可以用匹配任何类型

//:  - 用一个占位符（T）,取代原具体类型,函数名后加<T>，如果要用到不止一个占位符，可以用UVW等后续字母或任意字符.
//打印任意数组元素
func printAny<T>(数组: [T]) {
    for 元素 in 数组 {
        print(元素)
    }
}

printAny(数组: [1,2,3])
printAny(数组: [1.1,2.3,3.3])
printAny(数组: ["1","2","3"])

//Swift标准的交换值函数swap.
var a = 3
var b = -99
swap(&a, &b)
a
b


//: [类型参数](@next)
