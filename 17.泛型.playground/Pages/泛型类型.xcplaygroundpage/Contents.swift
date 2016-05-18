//: 泛型类型: 可以自定义泛型类型, 如适应任何类型参数的类/结构体/枚举等, 像数组和字典一样.
//:  - 🌰创建一个新泛型类型: Stack(堆).
import UIKit
UIImage(named: "草堆.jpg")

//:  - 草堆使用规则: 往上压草(push); 往下拿草(pop). 就像app中普遍的导航, 有进入详情页(push)和返回到上一页(pop).
UIImage(named: "pushpop")

//1. 堆中有3个值
//2. 第4个值是被"压"(push)进堆顶.
//3. 堆保持了4个值,最近一个值在堆顶.
//4. 堆顶的一项被拿掉(pop).
//5. 移掉后堆中还是3个值.
struct IntStack {
    var items = [Int]()
    
    mutating func push(item: Int) {
        items.append(item)
    }
    
    mutating func pop(item: Int) ->Int {
        return items.removeLast()
    }
}

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop(item: Element) ->Element {
        return items.removeLast()
    }
}

var Swift大神 = Stack<String>()
Swift大神.push("Mattt")
Swift大神.push("raywenderlich")
Swift大神.push("鸟叔")
Swift大神.push("老镇")
Swift大神.push("xiaobo")

let 菜鸟 = Swift大神.pop("xiaobo")
菜鸟

Swift大神
//: [泛型约束](@next)
