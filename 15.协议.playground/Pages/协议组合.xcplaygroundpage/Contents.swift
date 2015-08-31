//: 协议组合: 多个协议临时组合在一起的类型. 形式: protocol<协议1,协议2,...>
protocol 年龄协议 {
    var 年龄 : Int { get }
}

protocol 姓名协议 {
    var 姓名: String { get }
}

struct  学生: 年龄协议, 姓名协议, CustomPlaygroundQuickLookable {
    var 年龄: Int
    var 姓名: String
    
    func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return PlaygroundQuickLook.Text(self.姓名 + ":\(self.年龄)岁")
    }
}

//无论传递的寿星是何类型,只要遵从年龄和姓名协议即可,参数大大自由化.
func 生日祝愿(寿星: protocol<年龄协议,姓名协议>)  {
    print("祝",寿星.姓名,寿星.年龄,"岁生日快乐!")
}

let 学生1 = 学生(年龄: 20, 姓名: "千与千寻")

生日祝愿(学生1)
//: [协议检查和转换](@next)
