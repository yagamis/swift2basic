//: 字典: 由一组键值对, 但与新华字典差异是, Swift字典中的元素没有顺序. 每一个值都有唯一的键.
//:  - 定义: Dictionary<键类型, 值类型>,⚡️短格式[键类型: 值类型]
//:  - 创建一个空字典: [键类型:值类型] (), 清空已有的一个字典[:] 或 removeAll
import Foundation
var 实战小组 = [Int:String]()

"字典: 由一组键值对".stringByApplyingTransform(NSStringTransformMandarinToLatin, reverse: false)



// json
//:  - 用字典字面量来创建字典, 每一对键值用逗号隔开,键与值之间用冒号隔开
实战小组 = [1:"小波",2:"希达",3:"yuki"]

//:  - 访问和修改字典: ①总数 count, 🈶是否有键值对,isEmpty
实战小组.count
实战小组.isEmpty

//:  - ②添加或更新,用下标  字典变量[键] = 值
实战小组[2] = "Kevin"
实战小组

//:  - ③添加或更新还可以用updateValue(forKey)方法,更新成功则返回旧的值,否则直接添加.
实战小组.updateValue("小学生", forKey: 4)
实战小组.updateValue("书霸", forKey: 1)
实战小组

//:  - ④获取,依然可以用下标
实战小组[3]

//:  - ⑤移除,用下标把值设为nil 或 用removeValueForKey
实战小组[4] = nil
实战小组

//:  - ⑥循环一个字典 for in, 因为键值对有2个元素, 循环时用元组变量接收.
for (学号,昵称) in 实战小组 {
    print("\(学号) \(昵称)")
}
//:  - 1⃣️单独使用其中键或值,使用 keys 或 values
for 学号 in 实战小组.keys{
    print("\(学号)")
}
for 昵称 in 实战小组.values {
    print(昵称)
}
//:  - 2⃣️把键值对分离成数组,用 [数组类型] (字典变量.keys), [数组类型] (字典变量.values)
let 学号组 = [Int](实战小组.keys)

let 姓名组 = [String](实战小组.values)

//:  - 3⃣️因为字典无序,可以在循环中对字典的keys和values使用sort方法排序.
[Int](实战小组.keys.sort())
[String](实战小组.values.sort())


//: [下一章:控制流](@next)
