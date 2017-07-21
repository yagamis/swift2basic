//: 类型属性 :属于类型固有的,实例不能调用.
//: - ⚠️对于类, 计算型的类型属性,前面加关键字class可被子类重写(override)

//单细胞生物
class Unicelluar {
    //遗传方式
    class var inherit :String {
        return "RNA"
    }
    
}

Unicelluar.inherit

//人类也继承了单细胞生物的特性
class Human: Unicelluar {
    override class var inherit :String {
        return "DNA"
    }
}

Human.inherit

//: - 💡结构体和枚举, 关键字 static
struct Shopping {
    static let brand = "UNIClO"
    static let net = "http://www.taobao.com?cate="
    var cate = ""
    
    var url : String {
        return Shopping.net + cate
    }
}

Shopping.brand

let shopping1 = Shopping(cate: "seafood")

shopping1.url


//: [](@next)
