//: if和Switch语句
//: - if语句: 条件成立或不成立时的应对.
var 晴天 = false

if 晴天 {
    print("上班!")
} else {
    print("休息!")
}


//: - switch语句:超过2个以上情况判断的场合

var 天气预报 = "霾"

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
坐标图1()


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
坐标图2()

let 坐标3  = (-3, 3)
switch 坐标3 {
case let (x, y) where x == y:
    "\(x),\(y), 是在 x轴与y轴的45度对角线"
case let (x, y) where x == -y:
    "\(x),\(y), 是在 x轴与y轴的135度对角线"
case let (x, y):
    "\(x),\(y)不在对角线"
}
