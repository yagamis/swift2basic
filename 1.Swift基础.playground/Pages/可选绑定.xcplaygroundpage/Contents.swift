//: 可选绑定: 将可选判断和拆包,"安全"组合在一起.
//: - 🈯️如果可选变量有值,则将值保存于一个临时变量.可用if let语句进行检查.
//: - 格式：if let 临时常量 = 可选变量 { 语句 }
var sex: Bool? = false

if let sex1 = sex {
    print(sex1)
} else {
    print("用户没有选择性别")
}
//: 多重绑定 : 一次可以对多个可选变量进行绑定.只需在绑定语句上用逗号分隔.
var addr: String? = "上海市"

if let sex = sex, let addr = addr {
    print(sex, addr)
} else {
    print("用户性别和地址不完善")
}


//: 绑定判断:加上where语句可以对绑定的结果进行判断.
if let sex = sex, let addr = addr , !sex && addr == "上海市" {
    print(addr, "的美女包邮哦")
} else {
    print("用户性别和地址不完善")
}


//: [有值可选类型](@next)
