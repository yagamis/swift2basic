//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//:  - 方法是一个类/结构体/枚举关联的函数.
//:  - 实例方法:
//: ----
//:  - 定义和使用:与函数相似.  💡self属性:引用实例自身,通常可以不写.
import UIKit

enum Emotion {
    case normal, angry, sad, happy
}
//根据情绪来调整着装
struct Dressing {
    var emotion : Emotion
    
    func color() -> UIColor {
        switch emotion {
        case .angry:
            return UIColor.red
        case .happy:
            return UIColor.yellow
        case .normal:
            return UIColor.gray
        case .sad:
            return UIColor.blue
        }
    }
    
}

let todayDressing = Dressing(emotion: .happy)
todayDressing.color()


//:  [>](@next)
