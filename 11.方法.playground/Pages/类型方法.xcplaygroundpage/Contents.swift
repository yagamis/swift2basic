//: 类型方法 : 属于类型本身通用的方法, 与具体的实例无关。 在方法前加static
//: - ⚠️对于类, 加关键字class. 可被子类重写(override)
class China {
    static var countryName = "中国"
    
    class func greetings() {
        print("\(countryName)欢迎您！")
    }
}

class Anhui : China {
    static let proviceName = "安徽"
    
    override class func greetings() {
        print("\(countryName)\(proviceName),欢迎您!")
    }
}

China.greetings()
Anhui.greetings()



//: [](@next)
