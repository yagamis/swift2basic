//: 字典: 值无序可重复,但每个值有唯一的键(Key)
//:  - 定义: Dictionary<键类型, 值类型>, 或 [键类型: 值类型]
var a: [String: String]


//:  - 用字典字面量来创建字典, 键与值之间用冒号隔开.
var airports = ["PVG":"上海浦东国际机场", "CHU":"周水子机场", "DUB":"Dublin Airport"]

//:  - ①计数: count, 空否: isEmpty
airports.count
airports.isEmpty




//:  - ②添加或更新: 字典变量[键] = 值
airports["SHQ"] = "虹桥机场"
airports["NKG"] = "禄口机场"


//:  - ③获取,依然可以用下标
airports["NKG"]


//:  - ④移除,用下标把值设为nil

airports["NKG"] = nil
airports

//:  - ⑥循环一个字典 for in, 因为键值对有2个元素, 用元组变量.
for (key,value) in airports {
    print(key,value)
}

//:  - 1⃣️单独使用其中键或值,使用 keys 或 values (可使用for in)
for value in airports.values {
    print(value)
}

//:  - 2⃣️把键值对分离成数组,用 [数组类型] (字典变量.keys), [数组类型] (字典变量.values)
let codes = [String](airports.keys)




