//: 扩展嵌套类型: 可以对既有类型添加嵌套类型.
//: - 🌰对整数添加正负类型判断
extension Int {
    enum Kind {
        case 正,负,零
    }
    
    var 正负类型: Kind {
        switch self {
        case 0:
            return .零
        case  let x where x > 0:
            return .正
        default:
            return .负
        }
    }
}

let 整数组 = [3, 4, 0 , -5]
var 整数组类型 = [String]()

for 整数 in 整数组 {
    var 符号: String
    
    switch 整数.正负类型 {
    case .正:
        符号 = "+"
    case .负:
        符号 = "-"
    default:
        符号 = "0"
    }
    
    整数组类型.append(符号)
}

整数组类型



//: [](@next)
