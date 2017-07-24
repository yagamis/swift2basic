//: 属性协议：顾名思义，遵从者要实现协议规定的属性。
//:  - 属性必须定义为变量。 setter可选实现。
protocol Nameable {
    var nick : String { get }
    var title : String { get }
}

//:  - 遵从属性协议: 必须要实现其规定的属性
enum Grade {
    case primary, middle, high
}

struct Student : Nameable {
    var nick: String
    var grade : Grade
    
    var title: String {
        switch grade {
        case .primary:
            return "小学生：" + self.nick
        case .middle:
            return "中学生：" + self.nick
        case .high:
            return "高中生:" + self.nick
        }
    }
}

let xiaoming = Student(nick: "晓明", grade: .primary)
xiaoming.nick
xiaoming.title


struct Teacher: Nameable {
    var nick: String
    
    var title: String {
        return nick + "老师"
    }
}

let wanglaoshi = Teacher(nick: "小王")
wanglaoshi.title
wanglaoshi.nick


//: [>](@next)
