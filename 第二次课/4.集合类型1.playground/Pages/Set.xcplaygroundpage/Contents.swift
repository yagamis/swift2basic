//: 集合(Set): 值无序不重复. 适合存储具有唯一性的数据, 如用户名/身份证号码/护照号等

//:  - 定义: Set<元素类型>, 无法使用类型推断,但可省略类型.
var cardno :Set = [1,2,3]


//:  - 用数组字面量创建集合
var citys: Set = ["shanghai","beijing","guangzhou"]


//:  - ①元素数: count, 空否: isEmpty
citys.count
citys.isEmpty

//:  - ②插入:insert
citys.insert("shenzhen")
//:  - ③移除:remove

citys.remove("shanghai")

citys
//:  - ④是否包含某元素:contains
citys.contains("beijing")
//:  - ⑤转换为数组:sorted
let citysArray = citys.sorted()
//:  - 集合间的运算: 交差并补
setdemo()



var x: Set = [1,2,3,4]
var y: Set = [4,5,6,7]
//:  - 交集 intersection
x.intersection(y)

//:  - 补集 symmetricDifference
x.symmetricDifference(y)

//:  - 差集 subtract
x.subtract(y)

//:  - 并集 union
x.union(y)


//:  - 集合间的关系
setRelation()


//:  - 💡相等: 两个集合有完全相同的元素.
let h:Set = [1,2,3]
let i:Set = [3,2,1,4]

h == i
//:  - ①子集: isSubset(可以相等), 严格子集isStrictSubset
h.isSubset(of: i)
h.isStrictSubset(of: i)

//:  - ②父集: isSupersetOf(可以相等), 严格父集isStrictSuperSetOf
i.isSuperset(of: h)
i.isStrictSuperset(of: h)

//:  - ③无交集: isDisjoint
let j : Set = ["game","comic"]
let k : Set = ["sport","walking"]
j.isDisjoint(with: k)
//: [>](@next)
