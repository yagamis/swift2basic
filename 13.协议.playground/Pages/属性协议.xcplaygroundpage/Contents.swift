//: 属性协议：顾名思义，遵从者要实现协议规定的属性。
//:  - 属性必须定义为变量。 setter可选实现。
protocol Nameable {
    var nick: String { get }
    var title : String { get }
}

enum Grade {
    case primary, middle
}

//:  - 遵从属性协议: 必须要实现其规定的属性
struct Student: Nameable {
    var grade : Grade
    var nick: String

    var title: String {
        switch grade {
        case .primary:
            return "小学生" + nick
        case .middle:
            return "中学生" + nick
        }
    }
}

let xiaoming = Student(grade: .primary, nick: "晓明明")
xiaoming.title

//这个例子的好处在哪里？ 把名字相关属性从Student分离
struct Teacher: Nameable {
    var nick: String
    var title: String {
        return nick + "老师"
    }
}

let wanglaoshi = Teacher(nick: "老王")
wanglaoshi.title

//: [>](@next)
