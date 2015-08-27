import UIKit
//: if和switch语句
//: - if语句: if 条件1 {语句} else if 条件2 {语句} else {语句}. 如天气预报决定出行工具.
var 天气预报 = "雨"

if 天气预报 == "晴" {
    print("跑步上班!")
} else if (天气预报 == "雨") {
    print("打车上班!")
} else {
    print("坐公交上班!")
}

//: - switch语句:当遇到超过2个以上的条件需要判断时. 格式:
//switch 某变量 {
//    case 条件1:
//        操作1
//    case 条件2:
//        操作2
//    case 条件3:
//        操作3
//    default:
//        以上条件都不满足时的处理.
//}

天气预报 = "雾霾"

switch 天气预报 {
    case "晴":
        print("跑步上班")
    case "阴":
        print("坐公交上班")
    case "雨":
        print("打的上班")
    default:
        print("今天请假不上班")
}

//: - switch条件的内部再匹配.




//: - 1⃣️范围匹配:如农场主根据节气(温度范围)来播种
var 温度 = 23
var 提示 = ""

switch 温度 {
case 0:
    提示 = "冷空气来袭,注意防寒保暖,有冰,注意出现防滑"
case 1..<10:
    提示 = "多穿衣服"
case 10..<20:
    提示 = "注意着凉"
case 20..<30:
    提示 = "天气适宜,出去踏青"
case 30..<40:
    提示 = "夏天来了,一起玩水去!"
default:
    提示 = "不适宜人类的温度了,好自为之!"
}
//: - 2⃣️元组匹配:可以同时对多个变量进行组合式匹配. 如坐标点所在象限判断.
UIImage(named: "coordinate")

let 坐标 = (1,1)

switch 坐标 {
case (0, 0):
    "原点"
case (_ ,0):
    "x轴上"
case (0 ,_):
    "y轴上"
case (-2...2 , -2...2):
    "(\(坐标.0),\(坐标.1))在框之内"
default:
//    "不在范围内"
    break
    
}




//: - 3⃣️值绑定:一个case里可以绑定临时变量,以便在执行语句中使用.
let 坐标2  = (0, 3)
switch 坐标2 {
case (let x, 0):
    "x轴上的 \(x)"
case (0, let y):
    "y轴上的 \(y)"
case let (x, y):
    "\(x),\(y)"
}


//: - 4⃣️值绑定的where再匹配:
UIImage(named: "coordinate-2")

let 坐标3  = (-3, 3)
switch 坐标3 {
case let (x, y) where x == y:
    "\(x),\(y), 是在 x轴与y轴的45度对角线"
case let (x, y) where x == -y:
    "\(x),\(y), 是在 x轴与y轴的135度对角线"
case let (x, y):
    "\(x),\(y)不在对角线"
}

//: [](@next)
