//: 可选绑定: 将可选判断和可选强拆,"安全"组合在一起.
//: - 🈯️如果可选变量有值,则将值保存于一个临时变量.可用if和while语句进行检查.
//: - 常用固定格式是if let 临时常量 = 某可选变量 { 语句 }
//: - 🌰性别绑定
var sex : Bool?
if let sex1 = sex {
    print(sex1)
} else {
    print("未填性别")
}


//: 多重绑定 : 一次可以对多个可选变量进行绑定.只需在绑定语句上用逗号分隔.
var addr:String?

if let sex1 = sex, addr1 = addr {
    print(sex1, addr1)
} else {
    print("性别和地址不完善")
}

//: 绑定判断:加上where语句可以对绑定的结果进行判断.

sex = true
addr = "上海市"

if let sex1 = sex, addr1 = addr where sex1 {
    print("帅哥，您的收货信息已完善")
}


//: [暗拆可选类型](@next)
