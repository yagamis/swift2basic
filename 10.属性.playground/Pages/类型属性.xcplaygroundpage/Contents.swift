//: 类型属性 :属于类型固有的,实例不能调用.
//: - ⚠️对于类, 计算型的类型属性,前面加关键字class可被子类重写(override)
class 生命体 {
    class var 遗传方式 :String {
        return "RNA"
    }
    
}

生命体.遗传方式

class Human: 生命体 {
    override class var 遗传方式 :String {
        return "DNA"
    }
}

Human.遗传方式

//: - 💡结构体和枚举, 关键字 static
struct 逛街 {
    static let 试衣间 = "UNIClO"
    static let 网站 = "http://www.taobao.com?cate="
    var cate = ""
    
    var shareUrl : String {
        return 逛街.网站 + cate
    }
}

逛街.试衣间

let 逛淘宝 = 逛街(cate: "seafood")

逛淘宝.shareUrl


//: [](@next)
