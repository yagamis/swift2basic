//: 💡协议继承: 一个协议可以继承若干个协议,并可以在继承基础上增加新需求. 与class继承相似, 区别是class不能多重继承. 对结构体进行协议扩展,相当于实现了多重继承.(面向协议编程)
//: - 继承的多个协议间用逗号分隔.
import Foundation


//自定义一个可打印和可预览协议
protocol myPrintable: CustomStringConvertible, CustomPlaygroundQuickLookable {
    
}

struct myText {
    var text: String
}

//: ⚡️提供默认实现: 可以给协议扩展提供一个默认的实现, 任何遵从此协议的类型都会获得.
import UIKit


extension myPrintable {
    var description: String {
        return "控制台: 默认描述"
    }
    
    func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return PlaygroundQuickLook.Text("playgroud预览: 默认值")
//        return PlaygroundQuickLook.Color(UIColor.blueColor())
        
    }
}

extension myText: myPrintable {
    var description: String {
        return "print时的预览:" + self.text
    }
    
    func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return PlaygroundQuickLook.Text("我的Text快速预览:" + self.text)
    }
}

let text1 = myText(text: "xiaobo")

print(text1)

//: [类专用协议](@next)
