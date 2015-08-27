//: 构造方法协议: 可以要求遵从者实现指定的构造方法.
//: - 实现时用 required init,编译器会提示添加.无须手工添加required
protocol 某带参数的构造方法协议 {
    init(某参数: Int)
}

class 某类: 某带参数的构造方法协议 {
    required init(某参数: Int) {
        
    }
}
//: - 如果子类与父类同时遵从某构造方法协议, 则子类构造方法须加override required
protocol 某构造方法协议 {
    init()
}

class 父类 {
    init() {
        
    }
}

class 子类: 父类, 某构造方法协议 {
    override required init() {
        
    }
}

//: [协议作为类型使用](@next)
