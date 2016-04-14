//: 泛型约束: 有时候需要强制泛型类型在一定的范围内, 比如是某个类的子类,或遵从某个协议.
//func 某函数<T: 某类, U: 某协议>(某参数: T, 某类型: U) {
//    //函数体
//}


func 查位置<Element: Equatable>(文本数组:[Element], 待查元素:Element) -> Int? {
    for (位置, 值) in 文本数组.enumerate() {
        if 值 == 待查元素 {
            return 位置
        }
    }
    return nil
}


查位置(["刘备","关羽","张飞","孔明"], 待查元素: "孔明")
//: [关联类型](@next)
