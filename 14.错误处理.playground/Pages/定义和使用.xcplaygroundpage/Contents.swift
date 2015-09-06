//: ----
//:  - [小波说Swift 2](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 错误处理: 反映运行出错的“细节”，并恢复程序的过程.
//: - 可选类型仅处理值缺失, 错误处理可以针对不同的出错原因对不同的应对.


//: - 一个函数可以加上throws关键字,表示可以处理错误. 这个函数的调用者可以捕获(catch)这个错误并进行应对.
func aFoo() throws {
    print("iOS-training 7：30开始答疑")
}


//: - 当你调用可以抛出错误的函数,须在前面加上try关键字.

try aFoo()


//: - 处理更细分的错误情况，错误类型须遵从ErrorType协议。
enum 学习障碍: ErrorType {
    case 没方法, 不想看书, 缺学习工具(tool: String)
}

func iosDev(方法: Bool, 方式: Bool, 工具: Bool) throws {
    guard 方法 else {
        throw 学习障碍.没方法
    }
    
    guard 方式 else {
        throw 学习障碍.不想看书
    }
    
    guard 工具 else {
        throw 学习障碍.缺学习工具(tool: "Mac book电脑")
    }
}

var 预算 = 7000

func buy(工具:String) {
    if 预算 >= 6000 {
        预算 -= 6000
        print("您已经采购",工具,"花费6000元,余额",预算)
    } else {
        print("资金不足！")
    }
}

//尝试iOS开发的学习
do {
    try iosDev(true, 方式: true, 工具: false)
    print("恭喜您迈出了第一步！")
} catch 学习障碍.没方法 {
    print("找小波")
} catch 学习障碍.不想看书 {
    print("看小波视频，斗鱼互动")
} catch 学习障碍.缺学习工具(let mac) {
    buy(mac)
}


//: - 有时候仅关心结果有无，可使用 try? 或 try! 来忽略错误细节。
if let result = try? iosDev(true, 方式: false, 工具: true) {
    print("恭喜您已经开始学习！")
} else {
    print("条件不足，无法学习")
}

try! iosDev(true, 方式: true, 工具: true)

//: - 特定的清理收尾工作。defer语句
func pk() {
    defer {
        print("Game over!")
    }
    print("Ready? GO!")
   
    
    print("Fight！")
    print("xiaobo VS lovely千与千寻")
}

pk()

