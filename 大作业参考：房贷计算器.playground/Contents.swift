import Foundation

//房屋总价
let price = 1_500_000.0
//贷款利率
let rate = 4.9 / 100
//分期年数
let years = 30
//首付利率
let downPayRate = 0.3

//本金
let principal = (price * (1 - downPayRate)) / Double(years * 12)
//贷款（逐月递减）
var loan = price * (1 - downPayRate)

//分期月数列表
//let months = Array(1...(years * 12))

//每个月利息列表
//每个月要还的利息费用，是当月还没有未还款的贷款 * 月利息，所以利息是递减的
//let monthlyInterest = months.map {_ -> Double in
//    let currentMonthInterest = loan * (rate / 12)
//    loan -= principal
//    return currentMonthInterest
//}

var interests : [Double] = []
for _ in 1...(years * 12) {
    let currentMonthInterest = loan * (rate / 12)
    loan -= principal
    interests.append(currentMonthInterest)
}

//每月利息列表
let desc = interests.reduce("每月利息：") { "\($0) \($1)"}

//总利息 - 数字型数组的计数 reduce,  sum
let totalInterests = interests.reduce(0.0) { $0 + $1}
totalInterests

//总花费
print("总花费：", Int(price + totalInterests))










