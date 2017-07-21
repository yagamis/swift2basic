//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: 错误处理: 反映运行出错的“细节”，并恢复程序的过程.
//: - 可选类型（Optional）只处理值缺失的情况, 错误处理可以针对不同的出错原因对不同的应对.

//: - 一个函数可以加上throws关键字,表示可以处理错误. 这个函数的调用者可以捕获(catch)这个错误并进行应对.
func learning() throws {
    print("3天学会Swift 4")
}

//: - 当你调用可以抛出错误的函数,须在前面加上try关键字.
try learning()

//: - 处理更细分的错误情况，错误类型须遵从Error协议。
enum LearningError: Error {
    case noWay, dislikeReading, lack(tool: String)
}

func iosDev(hasWay: Bool, byReading: Bool, hasTool: Bool) throws {
    guard hasWay else {
        throw LearningError.noWay
    }
    
    guard byReading else {
        throw LearningError.dislikeReading
    }
    
    guard hasTool else {
        throw LearningError.lack(tool: "Mac book电脑")
    }
}

var funds = 7000

func buy(_ tool:String) {
    if funds >= 6000 {
        funds -= 6000
        print("您已经采购",tool,"花费6000元,余额",funds)
    } else {
        print("资金不足！")
    }
}

do {
    try iosDev(hasWay: true, byReading: true, hasTool: false)
    print("迈出Swift学习第一步！")
} catch LearningError.noWay {
    print("找小波")
} catch LearningError.dislikeReading {
    print("看视频学习")
} catch LearningError.lack(let mac) {
    buy(mac)
}

//: - 有时候仅关心结果有无，可使用 try? 来忽略错误细节。
if let _ = try? iosDev(hasWay: true, byReading: false, hasTool: true) {
    print("恭喜您已经开始学习！")
} else {
    print("条件不足，无法学习")
}

// try! 强制执行可能会出错的方法，如果出错，则程序崩溃。
try! iosDev(hasWay: true, byReading: true, hasTool: true)

