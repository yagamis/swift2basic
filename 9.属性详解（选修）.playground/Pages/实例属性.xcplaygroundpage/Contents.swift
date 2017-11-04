//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//: ----
//: - 属性: 对象的特征，定义为变量。
//: - 实例属性: 实例化后才能使用
//: ----
//:  - 存储属性: 可以直接赋值的变量
struct Role {
    var hero = ""
    var cash = 0
}
var role1 = Role(hero: "曹操", cash: 100)

//:  - 计算属性: 由其他属性间接得出
//:  - get { //组合方法 }
//:  - set { //有新值时如何影响其他属性 }

//:  - 🌰玩家的当前坐标，与移动方式相关

struct Point {
    var x = 0, y = 0
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

let myPoint = Point(x: 100, y: 100)
player1.move = .teleport(myPoint)
player1.currentPoint


//计算属性如何影响其他属性
player1.currentPoint = Point(x: 200, y: 200)
player1.point

//:  - 👀属性监视器: 对属性变化的响应机制
//:  - willSet: 事前响应（即将设置的新值: newValue）
//:  - didSet : 事后响应（已被更新的旧值: oldValue）
struct Exp {
    var total = 0 {
        willSet {
            print("当前总经验:\(newValue)")
        }
        didSet {
            print("增加经验点:\(total - oldValue)")
        }
    }
}

var exp1 = Exp()
exp1.total = 1000


//:  [>](@next)
