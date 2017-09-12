//: 集合(Set): 值无序不重复. 适合存储具有唯一性的数据, 如用户名/身份证号码/护照号等

//:  - 定义: Set<元素类型>, 无法使用类型推断,但可省略类型.
var idcards : Set = [123,456,999,888, 123, 456,123]


//:  - 用数组字面量创建集合


//:  - ①元素数: count, 空否: isEmpty
idcards.count
idcards.isEmpty

//:  - ②插入:insert
idcards.insert(9435)

//:  - ③移除:remove
idcards.remove(9435)

//:  - ④是否包含某元素:contains
idcards.contains(123)

//:  - ⑤转换为数组:sorted
let idcardsArray = idcards.sorted()


//:  - 集合间的运算: 交差并补
setdemo()




//:  - 交集 intersection
var x: Set = [1,2,3,4]
let y: Set = [3,4,5,6]

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
let i : Set = [1,2,3]
let j : Set = [1,2,3,4]


//:  - ①子集: isSubset(可以相等), 严格子集isStrictSubset
i.isSubset(of: j)
i.isStrictSubset(of: j)

//:  - ②父集: isSupersetOf(可以相等), 严格父集isStrictSuperSetOf
j.isSuperset(of: i)
j.isStrictSuperset(of: i)

//:  - ③无交集: isDisjoint
let youfav: Set = ["game","comics"]
let girlfav: Set = ["shopping","eat"]

youfav.isDisjoint(with: girlfav)
//: [>](@next)
