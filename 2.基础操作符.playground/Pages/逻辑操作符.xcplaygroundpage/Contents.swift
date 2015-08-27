//: 逻辑操作符 :用于修改或组合布尔值. 比如 非诚勿扰 非高帅富勿扰 有富可以扰
//: - 非 !
let 诚 = false

if !诚 {
    print("非诚勿扰!")
} else {
    print("欢迎来我们节目")
}

//: - 与 &&
var 高: Bool
var 帅: Bool
var 富: Bool

高 = true
帅 = false
富 = true

if 高 && 帅 && 富 {
    print("您好, 高帅富")
} else {
    print("滚粗,屌丝!")
}
//: - 或 ||
if 高 || 帅 || 富 {
    print("您好,我们交个朋友吧")
} else {
    print("您好,外星人")
}
//: - 组合
var 上海本地人: Bool

上海本地人 = true

var 无房贷 = false

if (高 && 帅 && 富) || (上海本地人 && 无房贷) {
    print("我们交往吧")
} else {
    print("不是本地人,还不是高帅富, 还是算了!")
}


//: - 用括号来明示操作优先级,让代码更易读

//: [](@next)
