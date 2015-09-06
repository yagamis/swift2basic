//: ----
//:  - [小波说Swift 2](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 方法是一个类/结构体/枚举关联的函数. 分为实例方法和类型方法.
//: 实例方法:
//: ----
//:  - 定义和使用:与函数相似.  💡self属性:引用实例自身,通常可以不写.
enum 怪物经验表:Int {
    case 骷髅 = 80, 掷斧骷髅 = 100, 骷髅教主 = 300
}

struct 服务器经验倍数 {
    var 开启 = false
    var 倍数 = 1
}

class 人民币玩家 {
    var 经验值 = 0
    var 经验倍数 = 服务器经验倍数()
    
    func 挂机经验() {
        经验值 += 500
        print("挂机成功一次! 经验为\(经验值)")
    }
    
    func 打怪经验(怪物: 怪物经验表, 经验倍数: Int) {
        let 怪物经验值 = 怪物.rawValue
        
        self.经验值 += (怪物经验值 * 经验倍数)
        
        if self.经验倍数.开启 && self.经验倍数.倍数 > 1 {
            经验值 *= self.经验倍数.倍数
        }
        print("当前打怪经验值是\(self.经验值)")
    }
}

var 小波 = 人民币玩家()
小波.挂机经验()
小波.打怪经验(怪物经验表.骷髅教主, 经验倍数: 3)

小波.经验倍数.开启 = true
小波.经验倍数.倍数 = 10
小波.打怪经验(怪物经验表.掷斧骷髅, 经验倍数: 3)


//:  - 结构体/枚举实例默认不可改变属性值. 若需要修改,须加上mutating关键字.
struct 角色坐标 {
    var x = 0, y = 0
    
    mutating func 安全区坐标(x: Int, y: Int) {
        self.x = x
        self.y = y
        print("当前已回到安全区,坐标是\(self.x),\(self.y)")
    }
}

var 小波的坐标 = 角色坐标()
小波的坐标.安全区坐标(888, y: 999)


enum 猜拳 {
    case 石头,剪刀,布
    
    static let game = "猜拳"
    
     mutating func 开始() {
        print("我出的是\(self)")
        
        switch self {
        case 剪刀 :
            self = 石头
        case 石头:
            self = 布
        case 布:
            self = 剪刀
        }
        
        
    }
}

var 小波2 = 猜拳.剪刀

小波2.开始()

print(小波2)





//: ----
//:



//:  [类型方法](@next)
