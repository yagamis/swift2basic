//: 字典: 值无序可重复,但每个值有唯一的标记(Key)
//:  - 定义: Dictionary<键类型, 值类型>, 或 [键类型: 值类型]
var 机场简写对照字典 : [String: String]

//:  - 用字典字面量来创建字典, 键与值之间用冒号隔开.
机场简写对照字典 = ["PVG":"上海浦东国际机场" , "DLC":"大连周水子机场", "DUB":"Dublin International Airport"]

//:  - ①计数: count, 空否: isEmpty
机场简写对照字典.count


//:  - ②添加或更新: 字典变量[键] = 值 或 updateValue(forKey)方法
机场简写对照字典["SHQ"] = "上海虹桥国际机场"
机场简写对照字典["SHQ"] = "上海虹桥国际机场2号航站楼"

机场简写对照字典.updateValue("上海虹桥国际机场1号航站楼", forKey: "SHQ")

机场简写对照字典

//:  - ③获取,依然可以用下标
机场简写对照字典["DLC"]


//:  - ④移除,用下标把值设为nil 或 用removeValueForKey
机场简写对照字典.removeValueForKey("SHQ")

机场简写对照字典

//:  - ⑥循环一个字典 for in, 因为键值对有2个元素, 用元组变量.
for (机场代码, 机场全称) in 机场简写对照字典 {
    print(机场代码, 机场全称)
}

//:  - 1⃣️单独使用其中键或值,使用 keys 或 values


for (机场代码) in 机场简写对照字典.keys {
    print(机场代码)
}
//:  - 2⃣️把键值对分离成数组,用 [数组类型] (字典变量.keys), [数组类型] (字典变量.values)
let 机场代码组 = [String](机场简写对照字典.keys)
let 机场全称组 = [String](机场简写对照字典.values)


//: [下一章:控制流](@next)
