//: - switch语句:超过2个以上条件判断的场合,支持各种匹配条件。

//: - 1⃣️范围匹配:如根据室外温度来自动调节室内温度的空调

var temp = 39

switch temp {
case 35...42:
    print("强力制冷")
case 25...34:
    print("Normal cool")
case 18...24:
    print("wet fitler")
case 0...17:
    print("warm mode")
default:
    print("not working")
}


//: - 2⃣️元组匹配(选修):如某坐标(含x和y两个变量)所在象限判断.
坐标图1()

let point1 = (2,-2)

switch point1 {
case (0, 0):
    print("zero point")
case (_, 0):
    print("x axis")
case (0, _):
    print("y axis")
case (-2...2, -2...2):
    print("located in 2 * 2 rectangle ")
default:
    break
}


//: - 3⃣️值绑定（选修）:一个case里可以绑定临时变量,以便在执行语句中使用.
//把坐标的值显示出来
switch point1 {
case (let x, 0):
    print("x is", x)
case (let x, let y):
    print(x,y)
}

//: - 4⃣️值绑定的where再匹配（选修）:


//判断坐标是否在对角线上
switch point1 {
case (let x, 0):
    print("x is", x)
case (let x, let y) where x == y:
    print("45对角线",x,y)
case (let x, let y) where x != y:
    print("非对角线",x,y)
    
default:
    break
}



