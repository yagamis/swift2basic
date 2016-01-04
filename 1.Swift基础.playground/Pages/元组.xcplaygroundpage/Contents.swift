//: 元组(Tuple): 多个值的随意组合,临时使用.

//: - 定义: 圆括号内,各个值用逗号分开.
var mytaobao = ("xiaobo",500,4,"Diamond")

//: - 定义时,值前可以加前缀,以冒号分开
var kevintaobao = (user: "Kevin", account: 500, level: 4, title: "爱心")


//: - 要获取其中的某个值,用序号或前缀
kevintaobao.1


//: - 用于同时定义多个变量，或给多个变量同时赋值
let (user, account, level, title) = ("xiaowu", 200, 3, "钻石")


//: - ※用于多个变量交换值
var (a,b,c) = (1,2,3)

(a,b,c) = (b,c,a)
a
b
c

//: [下一节:Optional(可选类型)](@next)
