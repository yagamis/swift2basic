//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//: ----
//: - 属性: 类/结构体/枚举关联的变量
//: - 实例属性: 实例化后才能使用
//: ----
//:  - 存储属性: 有直接值的变量
class Duck {
    var legs = 2
    var skin = "yellow"

}

let myDuck1 = Duck()
myDuck1.legs
myDuck1.skin

//:  - 计算属性: 由其他属性计算得出的, 有getter、setter(可选)
//:  - get { //计算方法 }
//:  - set { //有新值（newValue）时如何影响其他属性 }

//:  - 🌰玩家的当前坐标，与移动方式相关
struct Point {
    var x = 0
    var y = 0
}

enum Move {
    case walk
    case teleport(Point)
}

class Player {
    var point = Point()
    var move = Move.walk
    
    var currentPoint: Point {
        get {
            switch move {
            case .walk:
                point.x += 1
                point.y += 1
            case .teleport(let customPoint):
                point.x += customPoint.x
                point.y += customPoint.y
            }
            
            return point
        }
        set {
            point = newValue
        }
    }
    
    
}

var player1 = Player()
player1.move = .walk
player1.currentPoint


let mypoint1 = Point(x: 1000, y: 2543)

player1.move = .teleport(mypoint1)

player1.currentPoint

player1.point




//:  - 👀属性监视器: 对属性变化的响应机制
//:  - willSet: 事前响应（即将设置的新值: newValue）
//:  - didSet : 事后响应（已被更新的旧值: oldValue）
struct Exp {
    var total = 0 {
        willSet {
            print("当前总经验：",newValue)
        }
        didSet {
            print("增加的经验：", total - oldValue)
        }
    }
}

var exp1 = Exp()

exp1.total = 88
exp1.total = 1000

//: ----
//:



//:  [>](@next)
