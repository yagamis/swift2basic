//: 泛型约束: 有时候需要强制泛型在一定的范围内, 比如是某个类的子类,或遵从某个协议.
//func 某函数<T: 某类, U: 某协议>(某参数: T, 某类型: U) {
//    //函数体
//}

//Equatable协议，顾名思义，可作相等运算的
func 查位置<Element: Equatable>(文本数组:[Element], 待查元素:Element) -> Int? {
    for (索引, 值) in 文本数组.enumerated() {
        if 值 == 待查元素 {
            return 索引 + 1
        }
    }
    return nil
}


查位置(文本数组: ["刘备","关羽","张飞","孔明"], 待查元素: "关羽")
//: [关联类型](@next)
