//: 协议组合: 多个协议临时组合在一起的类型. 形式: 协议1 & 协议2 & ...>
protocol Ageable {
    var age: Int {get}
}

protocol Nameable {
    var fullName: String { get }
}

struct Student: Ageable, Nameable {
    var age: Int
    var fullName: String
}

struct Teacher: Ageable, Nameable {
    var age: Int
    var fullName: String
}


let wang = Teacher(age: 30, fullName: "王老师")

func wish(person: Student) {
    print("祝",person.fullName,person.age,"岁生日快乐！")
}

//wish(person: wang)

func wish2(person: Ageable & Nameable) {
    print("祝",person.fullName,person.age,"岁生日快乐！")
}

wish2(person: wang)

let xiaoming = Student(age: 12, fullName: "晓明")
wish(person: xiaoming)

//: [>](@next)
