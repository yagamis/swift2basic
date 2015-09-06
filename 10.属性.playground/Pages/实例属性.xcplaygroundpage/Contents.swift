//: ----
//:  - [小波说Swift 2](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 属性是一个类/结构体/枚举关联的值. 分为实例属性和类型属性.
//: 实例属性:
//: ----
//:  - 常规属性: 一个存储用的常量/变量.
class 角色 {
    let id:String = "xiaobo"
    var money: Int = 9999
}

let 小波 = 角色()
小波.id
小波.money


//:  - 🕔懒加载属性: 用于延后载入一个资源消耗大户(大文件/图像/视频/网络操作等).
class 地图 {
    var filename = "死亡沙漠.map"
}

class 战士: 角色 {
    lazy var 打怪地图 = 地图()
    var 进入副本 = false
}

let 战士1 = 战士()
if 战士1.进入副本 {
    print(战士1.打怪地图)
}

//:  - 🐬计算属性:由其他属性计算得出的. 由getter和setter组成.
//:  - getter⏳获取器(必须):描述属性如何计算及返回语句,形式: get { 语句和返回 }
//:  - setter🔨设置器(可选):有新值(newValue)后如何影响其他属性.形式: set { 语句 }.
//:  - 🌰游戏人物的坐标,移动后的坐标.
struct 坐标 {
    var x = 0, y = 0
}
enum 移动方式 {
    case 走
    case 跑
    case 骑
    case 传送
}

class 法师: 角色 {
    var 人物坐标 = 坐标()
    var 人物移动方式 = 移动方式.走
    
    var 当前坐标: 坐标 {
        get {
            switch 人物移动方式 {
            case .走:
                人物坐标.x += 1
                人物坐标.y += 1
            case .跑:
                人物坐标.x += 3
                人物坐标.y += 3
            case .骑:
                人物坐标.x += 10
                人物坐标.y += 10
            case .传送:
                人物坐标.x += 1000
                人物坐标.y += 1000
            }  
            return 人物坐标
        }
        
        set {
            人物坐标 = newValue
        }
    }
}

var 法师1 = 法师()

法师1.当前坐标
法师1.人物移动方式 = .跑

法师1.当前坐标

法师1.人物移动方式 = .传送

法师1.当前坐标

法师1.当前坐标 = 坐标(x: 2000, y: 90)

法师1.人物坐标

//:  - 无setter的计算属性为[只读计算属性],可以省略 get { }框架.

//:  - 👀属性监视器: 类似计算属性的setter,可以响应所有属性中值的变化.
//:  - willSet: 事前响应. 新值 newValue
//:  - didSet : 事后响应. 旧值 oldValue
class 经验 {
    var 总经验 : Int = 0 {
        willSet {
            print("当前总经验是:\(newValue)!")
        }
        didSet {
            print("增加了\(总经验 - oldValue)点经验!")
        }
    }
}

var 经验1 = 经验()
经验1.总经验 = 1000
经验1.总经验 = 3000
经验1.总经验 = 8000
//: ----
//:



//:  [类型属性](@next)
