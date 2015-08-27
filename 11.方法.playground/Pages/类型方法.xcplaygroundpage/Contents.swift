//: 类型方法 :属于类型本身,无需实例化就可以使用.
//: - ⚠️对于类, 加关键字class. 可被子类重写(override)
class 玩家 {
    static var 姓名 = "小波"
    
    class func 服务器名() {
        print("\(姓名),您在北京联通一区!")
    }
}

class 上海服务器玩家:玩家 {
    override class func 服务器名() {
        print("\(姓名),您现在上海电信2区!")
    }
}

let 土豪玩家1 = 上海服务器玩家()

let a :String = "a"

上海服务器玩家.服务器名()

玩家.服务器名()

//: - 💡结构体和枚举, 关键字 static
struct  复活 {
    static var hp = 100
    static func 复活点(当前区域:String) {
        print("您在\(当前区域)复活,HP是\(hp)")
    }
}



复活.复活点("盟重省安全区")

//: [](@next)
