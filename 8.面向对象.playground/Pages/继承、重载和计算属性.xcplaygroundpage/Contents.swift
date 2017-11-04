//: 类可以被继承，子类可以修改父类中的属性和方法。结构体和枚举不能继承。
class Duck {
    var color : String
    var foot : Int
    
    init(color: String, foot: Int) {
        self.color = color
        self.foot = foot
    }
    
    func growUp(color: String)  {
        self.color = color
    }
}

//鸳鸯继承了鸭子的所有属性和方法
class MandarinDuck: Duck {
    //增加了属性
    var lovers = 0
    var name = "鸳鸯"

    //可以更改父类中的方法
    override func growUp(color: String) {
        //调用父类的方法
        super.growUp(color: color)
        self.lovers = 1
        print("鸳鸯长大了！有了\(self.lovers)个伴侣！")
    }
    
    //计算属性：由其他属性间接得出(set),也可以影响其他属性(set)。
    var desc : String {
        get {
            return "\(self.name)是一种中国特有的鸭子种类，一生只有钟情于一个伴侣。"
        }
    }
}

let duck1 = MandarinDuck(color: "gray", foot: 2)
duck1.growUp(color: "Rainbow")
print(duck1.desc)


//: [>](@next)
