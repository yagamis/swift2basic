//: ----
//:  - [小波说Swift 2](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 初始化：描述类/结构体/枚举实例化时，属性如何给初始值的方法。形式：init(){  }。此方法称之为构造器。

//: - 1⃣️类的定义没有给属性默认的值，则须在init中指定。
class RoomTemp {
    var 季节 : String
    var 温度 : Int
    
    init(季节:String, 温度:Int) {
        self.温度 = 温度
        self.季节 = 季节
    }
}


let livingTemp = RoomTemp(季节: "夏天", 温度: 24)
livingTemp.季节
livingTemp.温度

//: - 2⃣️结构体定义不需要指定属性默认的值，因为默认提供一个包含所有属性初始化的构造器。

//struct OfficeTemp {
//    var 季节 : String
//    var 温度 : Int
//}
//
//let xiaoboOfficeTemp = OfficeTemp(季节: "冬天", 温度: 25)
//xiaoboOfficeTemp.温度
//xiaoboOfficeTemp.季节

//: - 3⃣️便利构造器：可以通过对主构造器的包装，实现便利的初始化。
class Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "没有名称的食物！")
    }
}

let nonameFood = Food()

nonameFood.name

class Menu: Food {
    var count: Int
    
    init(name:String, count: Int){
        self.count = count
        super.init(name: name)
    }
    
    convenience override init(name: String) {
        self.init(name: name, count: 1)
    }
}

let menu1 = Menu(name: "牛肉")

menu1.name
menu1.count

//: - 4⃣️可失败构造器：针对有可能的初始化失败，返回nil。🌰初始化一张图片，如果图片名不存在，则初始化失败。
import UIKit

let hcxySlogn = UIImage(named: "logo")

let hcxyBanner = UIImage(named: "banner.jpg")

hcxyBanner!.description


struct Animal {
    let name: String
    
    init?(name :String) {
        if name.isEmpty {
            print("动物没有给名字")
            return nil
        }
        
        self.name = name
    }
}

let elepant = Animal(name: "")

//可选链 optional chain
elepant?.name.fastestEncoding.description



let url = NSURL(string: "http://www.hcxy.me")

let urlrequest = NSURLRequest(URL: url!)

//: [](@next)
