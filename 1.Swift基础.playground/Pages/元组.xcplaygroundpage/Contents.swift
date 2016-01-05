//: 元组(Tuple): 多个值的随意组合,临时使用.

//: - 定义: 圆括号内,各个值用逗号分开.
("xiaobo",300,"黄钻",4)

//: - 定义时,值前可以加前缀,以冒号分开
let xiaobotaobao = (user:"xiaobo", account: 300, title: "黄钻", level:4)

//: - 要获取其中的某个值,用序号或前缀
xiaobotaobao.title
xiaobotaobao.3


//: - 用于同时定义多个变量，或给多个变量同时赋值
var (a, b, c) = (3, 4, 5)

a
b
c
//: - ※用于多个变量交换值
(a, b, c) = (b, c, a)

a
b
c


//: [下一节:Optional(可选类型)](@next)
