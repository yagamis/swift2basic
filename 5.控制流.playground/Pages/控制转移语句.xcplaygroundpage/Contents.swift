//: 控制转移语句更改代码执行的顺序,从一块代码跳转到另一块代码.
//: Swift的5种转移语句: continue break fallthrough return throw
//: return 用于函数中, throw用于错误处理. 本章不介绍.

//: - continue 结束本次循环, "小波你好,这次我提前学完了,小波你快给我下一章视频,波再见".比如替换这段字中的小波为空.
var 不客气的提醒 = ""
for 字 in "小波你好,这次我提前学完了,小波你快给我下一章视频,波再见".characters {
    if 字 == "了" {
        continue
    }
    
    不客气的提醒.append(字)
}

不客气的提醒


//: - break 1⃣️在循环中,完全终止循环. 2⃣️结束整个switch,通常在default中,立即结束语句.


//: - fallthrough 用于switch语句中,贯穿往下执行. 官方"强烈不建议使用",只为兼容C语言习惯的人使用.

//: [早退语句](@next)
