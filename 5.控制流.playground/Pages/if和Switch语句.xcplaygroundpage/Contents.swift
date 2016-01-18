//: if和Switch语句
//: - if语句: 条件成立或不成立时的应对.
var credit = true
var hasCash = true

if credit && hasCash {
    print("欢迎打的!")
} else {
    print("对不起,您回家拿钱包!")
}


//: - switch语句:超过2个以上情况判断的场合
var 天气 = "阴"

switch 天气 {
    case "晴":
        print("我们一起去爬山吧")
    case "雨":
        print("我们去打保龄球吧")
    case "雪":
        print("我们一起去堆雪人!")
    case "霾":
        print("请减少外出,如果外出请佩戴口罩!")
    default:
        break
}


//: - switch条件的内部再匹配.


//: - 1⃣️范围匹配:如农场主根据节气(温度范围)来播种
var 温度 = 27

switch 温度 {
    case 0...15:
        print("不适合种植")
    case 15...25:
        print("种玉米")
    case 25...30:
        print("种香蕉,椰子")
    default:
        print("休息休息")
}






//: - 2⃣️元组匹配:可以同时对多个变量进行组合式匹配. 如坐标点所在象限判断.
坐标图1()

//判断坐标 是否位于 原点 X轴 Y轴 或  2 * 2的坐标区域内
let 坐标1 = (0, 2)

switch 坐标1 {
case (0, 0):
    print("原点")
case (_, 0):
    print("坐标在X轴上")
case (0, _):
    print("坐标在Y轴上")
case (-2...2, -2...2):
    print("坐标在2*2范围内")
default:
    break
}

//: - 3⃣️值绑定:一个case里可以绑定临时变量,以便在执行语句中使用.
//把坐标的值显示出来
let 坐标2 = (13, 12)

switch 坐标2 {
case (0, 0):
    print("原点")
case (let x, 0):
    print("坐标在X轴上:", x)
case (0, let y):
    print("坐标在Y轴上:", y)
case (let x, let y):
    print(x, y)
}

//: - 4⃣️值绑定的where再匹配:
坐标图2()
//判断坐标是否在对角线上
let 坐标3 = (-1.5, 11.5)

switch 坐标3 {
case (let x, let y) where x == y:
    print("坐标在45度对角线")
case (let x, let y) where x == -y:
    print("坐标在135度对角线")
default:
    print("坐标不在任何对角线上")
}



