//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//: ----
//: - 属性: 类/结构体/枚举关联的变量
//: - 实例属性: 实例化后才能使用
//: ----
//:  - 存储属性: 有直接值的变量
class Role {
    var hero = ""
    var cash = 0
}

let role1 = Role()
role1.hero = "钟馗"
role1.cash = 1000

//:  - 计算属性: 由其他属性计算得出的, 有getter、setter(可选)
//:  - get { //计算方法 }
//:  - set { //有新值（newValue）时如何影响其他属性 }

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
            switch self.move {
            case .walk:
                self.point.x += 1
                self.point.y += 1
            case .teleport(let customPoint):
                self.point.x += customPoint.x
                self.point.y += customPoint.y
            }
            
            return point
        }
        //计算属性的setter，影响其他属性
        set {
            self.point = newValue
        }
    }
}

let player1 = Player()
player1.move = .walk

let myPoint = Point(x: 2000, y: 5000)
player1.move = .teleport(myPoint)

player1.currentPoint






//:  - 👀属性监视器: 对属性变化的响应机制
//:  - willSet: 事前响应（即将设置的新值: newValue）
//:  - didSet : 事后响应（已被更新的旧值: oldValue）
struct Exp {
    var total = 0 {
        willSet {
            print("当前总经验：",newValue)
        }
        
        didSet {
            print("增加经验点：", total - oldValue)
        }
    }
}

var exp1 = Exp()
exp1.total = 2000
exp1.total = 2345


//: ----
//:



//:  [>](@next)
