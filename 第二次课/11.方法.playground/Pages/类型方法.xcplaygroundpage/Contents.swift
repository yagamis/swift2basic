//: 类型方法 : 属于类型本身通用的方法, 与具体的实例无关。 在方法前加static
//: - ⚠️对于类, 加关键字class. 可被子类重写(override)
class China {
    static let countryName = "中国"
    
    class func greetings()  {
        print(China.countryName,"欢迎您！")
    }
}

China.greetings()


class Chongqing: China {
    static let provinceName = "重庆"
    
    override class func greetings()  {
        print(China.countryName,Chongqing.provinceName,"欢迎您！")
    }
    
}

Chongqing.greetings()


