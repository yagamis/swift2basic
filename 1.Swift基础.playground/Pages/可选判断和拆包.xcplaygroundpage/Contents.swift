//: 可选判断: 使用if语句来判断可选变量是否有值(与nil比较).
//: - 🌰用户性别是否选择
var sex : Bool?

if sex == nil {
    print("没有选择性别")
} else {
    print("用户选择了性别")
}

//: 可选拆包 : 把可选变量中的值解压出来，在变量后加!

if sex! == true {
    print("男性")
} else {
    print("女性")
}



//: [可选绑定](@next)
