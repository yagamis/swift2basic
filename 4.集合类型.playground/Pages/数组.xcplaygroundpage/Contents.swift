//: 数组
//:  - 有序可重复,用于存储同一类型的值.

//:  - 定义: Array<类型> 或 [类型]
let array : [Int]

//:  - 创建一个有默认值的数组
array = [Int](repeatElement(3, count: 10))
//:  - ⚡️创建一个有序范围的Int数组,Array(起始值...终止值)
let array2 = Array(1...10)


//:  - ⚡️💡用数组字面量来创建数组: [值1, 值2, 值3, ..., 值N]
var places = ["beijing","shanghai","guangzhou","shenzhen"]


//:  - ①元素计数:count, 空否: isEmpty
places.count
places.isEmpty

//:  - ②➕添加: append, 添加一个同类型数组 +=
places.append("wuhan")

let haiwaiPlace = ["NewYork","London","Sao paolu"]

places += haiwaiPlace


//:  - ③获取元素 : 数组名[索引], ⚠️索引总是从0开始
places.count
places[7]


//:  - ④↙️插入: insert
places.insert("Paris", at: 4)

//:  - ⑤↗️移除: remove
places.remove(at: 8)

places


//: [>](@next)
