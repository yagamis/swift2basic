//: 更改代码执行的顺序,从一处代码跳转到另一处.
//: continue break

//: - continue 结束本次循环, break 结束整个循环
for i in 1...5 {
    if i == 3 {
//        continue
        break
    }
    print(i)
}


//: [早退语句](@next)
