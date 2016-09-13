//: 集合(Set): 值无序不重复. 适合存储具有唯一性的数据, 如用户名/身份证号码/护照号等

//:  - 定义: Set<元素类型>, 无法使用类型推断,但可省略类型.
var cardno : Set = [1,2,3]

//:  - 用数组字面量创建集合
var citys : Set = ["Shanghai","Beijing","wuhan","Hef"]
//:  - ①元素计数: count, 空否: isEmpty
citys.count
cardno.isEmpty

//:  - ②插入:insert
citys.insert("guangzhou")
//:  - ③移除:remove
citys.remove("Shanghai")

citys

//:  - ④是否包含某元素:contains
citys.contains("Beijing")

//:  - ⑤转换为数组:sorted
let cityArray = citys.sorted()


//:  - 集合间的运算: 交差并补
setdemo()

//:  - 1⃣️交集 intersection
var  x :Set = [1,2,3,4]
let  y :Set = [3,4,5,6]

x.intersection(y)

//:  - 2⃣️差集 subtract

//x.subtract(y)
//:  - 3⃣️并集 union
//x.union(y)

//:  - 4⃣️补集 symmetricDifference
x.symmetricDifference(y)

//:  - 集合间的关系
setRelation()


//:  - 💡相等: 两个集合有完全相同的元素.
let h : Set = [1,2,3]
let i : Set = [3,2,1,4]

h == i
//:  - 1⃣️子集: isSubset(可以相等), 严格子集isStrictSubset
h.isSubset(of: i)
h.isStrictSubset(of: i)
//:  - 2⃣️父集: isSupersetOf(可以相等), 严格父集isStrictSuperSetOf
i.isSuperset(of: h)
i.isStrictSuperset(of: h)
//:  - 3⃣️无交集: isDisjoint
let j : Set = ["游戏","动漫"]
let k : Set = ["购物","小吃","化妆"]

j.isDisjoint(with: k)

//: [>](@next)
