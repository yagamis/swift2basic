//: ----
//:  - [小波说Swift 2](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 类和结构体: 用面向对象的方法来思考编程。
//:  - class/struct 名称 {
//:  -  变量定义（属性）
//:  -  函数定义（方法）
//:  - }

//:  - 对象化（实例化）：参照类或结构体的定义，创造一个“生物体”。
struct Weapon {
    var name = ""
    var attack = 0
}

class Role {
    var name = ""
    var hp = 0
    var job = ""
    var weapon = Weapon()
}

let 战神小波 = Role()
var 屠龙刀 = Weapon()

屠龙刀.name = "暗黑屠龙"
屠龙刀.attack = 300

战神小波.hp = 1000
战神小波.job = "战士"
战神小波.name = "狂拽炫酷小波2016"
战神小波.weapon = 屠龙刀

//:  - 结构体:克隆体. 克隆体的变化,不影响主体.
屠龙刀.name = "增强版屠龙"

战神小波.weapon.name

//:  - 类:引用.牵一发而动全身.
let 战神小波分身 = 战神小波

战神小波分身.hp = 888

战神小波.hp

//: [](@next)
