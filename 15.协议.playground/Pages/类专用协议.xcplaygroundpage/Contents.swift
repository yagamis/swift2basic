//: 类专用协议: 可以把协议限制在class类型(让结构体和枚举无法使用),加关键字class到协议继承列表的第一位.
protocol 一个协议: class, CustomPlaygroundQuickLookable {
    
}

class  myText {
    var text = "22"
}

extension myText: 一个协议{
    func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return PlaygroundQuickLook.Text(self.text)
    }
}
//: [协议组合](@next)
