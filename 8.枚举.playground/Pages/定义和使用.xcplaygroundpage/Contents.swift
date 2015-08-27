//: 定义和使用 ：
//:  - enum 枚举名 {
//:  -  case 类型1
//:  -  case 类型2
//:  -  case ...
//:  - }
//:  - ⚠️类型1,2..命名只能是变量，不能使用字面量。
enum 方向 {
    case 东
    case 西
    case 南
    case 北
}


//:  - 使用枚举类型：枚举名.类型1
let 当前方向 = 方向.东
print(当前方向)

//:  - 兼容型枚举：Int型，String型。称为含“原始值”的枚举型。
enum 学号:Int {
    case 一年级 = 1
    case 二年级
    case 三年级
}

学号.三年级.rawValue


//:  - 与switch配合使用。如果变量是枚举值，case中可以省略枚举名
switch 当前方向 {
case .东 : print("东方不亮西方亮")
case .西 : print("取经之路")
default: print("条条大路通罗马")
}

//:  - 关联值（兼容性枚举不可用）: 枚举其中的类型可以关联一个或多个值，在其后加元组类型。 🌰case 类型N(Int,String,...)
enum 条形码{
    case UPCA(Int,Int,Int,Int)
    case QRCode(String)
}

//:  - 赋予关联值:加上元组字面量.🌰 枚举名.类型N(520,"I Love you",...)
var 某条形码 = 条形码.QRCode("yunbog")
某条形码 = 条形码.UPCA(622, 88, 342, 109)

switch 某条形码 {
case let .UPCA(国家位,出版社位,商品位,校验位):
    print("ISBN编码：\(国家位)\(出版社位)\(商品位)\(校验位)")
case let .QRCode(微信号):
    print(微信号)
}

//:  - 取得关联值(switch):加上元组变量.🌰 枚举名.类型N(节日,宣言,...)。


//: [](@next)
