//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//:  - 方法是一个类/结构体/枚举关联的函数.
//:  - 实例方法:
//: ----
//:  - 定义和使用:与函数相似.  💡self属性:引用实例自身,通常可以不写.
import UIKit

//情绪
enum Emotion {
    case happy,normal,angry,sad
}

//根据情绪来着装
struct Dressing {
    var emotion : Emotion

    func color() -> UIColor {
        switch self.emotion {
        case .happy:
            return UIColor.yellow
        case .angry:
            return UIColor.red
        case .sad:
            return UIColor.blue
        default:
            return UIColor.white
        }
    }
}


let todayDress = Dressing(emotion: .happy)
todayDress.color()

//: ----
//:



//:  [类型方法](@next)
