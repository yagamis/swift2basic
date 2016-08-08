//: 💡协议继承: 一个协议可以继承若干个协议,并可以在继承基础上增加新需求. 与class继承相似, 区别是class不能多重继承. 对结构体进行协议扩展,相当于实现了多重继承.(面向协议编程)
//: - 继承的多个协议间用逗号分隔.
import UIKit

//自定义一个可打印和可预览协议
protocol MyPrintable: CustomStringConvertible, CustomPlaygroundQuickLookable {
    
}

struct MyText {
    var text: String
}

//: ⚡️提供默认实现: 可以给协议扩展提供一个默认的实现, 任何遵从此协议的类型都会获得.
extension MyPrintable {
    var description: String {
        return "控制台: 默认描述"
    }
    
    
    var customPlaygroundQuickLook: PlaygroundQuickLook {
        return PlaygroundQuickLook.text("playgroud预览: 默认值")
//        return PlaygroundQuickLook.color(UIColor.blueColor())
    }
}

extension MyText: MyPrintable {
    var description: String {
        return "print时的预览:" + self.text
    }
    
    var customPlaygroundQuickLook: PlaygroundQuickLook {
        return PlaygroundQuickLook.text("我的Text快速预览:" + self.text)
    }
}

let text1 = MyText(text: "xiaobo")

print(text1)

//: [类专用协议](@next)
