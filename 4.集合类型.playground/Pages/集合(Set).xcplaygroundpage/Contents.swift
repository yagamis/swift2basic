import UIKit
//: 集合(Set): 集合其中的元素是互不重复的,也不像数组元素那样有先后顺序. 当你需要确定所有元素有唯一性时,或顺序不是那么重要时,用Set.

//:  - 一个类型必须是可哈希的,才能使用Set. 哈希是用于比较相同对象是否相等的一个整数值. 比如 a == b, a.hashValue == b.hashValue
//:  - Swift基础类型(String/Int/Double和Bool)都是默认可哈希的.
//:  - 定义: Set<元素类型>, 🈚️因为没有快捷定义方法.
//:  - 创建一个空集合: Set<类型>, 清空一个已有集合: [] 或 removeAll
var idcard : Set<String>
//:  - 用数组字面量创建集合.
idcard = ["12345","56789","23452"]
//:  - 虽定义无法使用类型推断, 但可以把类型省略不写,只保留 :Set
var bookisbn : Set = [9,6,1]
//:  - 访问和修改集合:①元素总数 count, 🈶是否有元素isEmpty
bookisbn.count

bookisbn.isEmpty
//:  - ②↙️插入元素insert
bookisbn.insert(5)
//:  - ③↗️移除元素remove, 若成功则返回被移除的元素的值,失败是nil
bookisbn.remove(3)
bookisbn

//:  - ④🈶是否包含特定元素contains
bookisbn.contains(9234234)

//:  - ⑤循环一个集合 for in. 返回一个排序过的集合, 先用集合的sort方法变换为一个数组
for 元素 in bookisbn.sort() {
    print(元素)
}


//:  - 集合特有的基础操作: 交差并补
UIImage(named: "setVennDiagram_2x")

//:  - 1⃣️交集 intersect
var b: Set = [6,8,10,76]
bookisbn

b.intersect(bookisbn)

//:  - 2⃣️差集 subtract
b.subtract(bookisbn)
bookisbn.subtract(b)

//:  - 3⃣️并集 union
let c = b.union(bookisbn)

//:  - 4⃣️补集 exclusive
b.exclusiveOr(bookisbn)

//:  - 集合的相互关系和相等性
UIImage(named: "setEulerDiagram_2x")

//:  - 💡相等: 两个集合包含完全相同的元素.
//:  - 1⃣️子集: isSubsetOf(可以相等), 严格子集isStrictSubsetOf
let h: Set = [1,2,3,8]
let i: Set = [8,3,1,2]
h == i

let j: Set = [1,2]

h.isSubsetOf(i)
j.isStrictSubsetOf(i)

//:  - 2⃣️父集: isSupersetOf(可以相等), 严格父集isStrictSuperSetOf
i.isStrictSupersetOf(j)


//:  - 3⃣️无交集: isDisjointWith
let k:Set = [88,99]


k.isDisjointWith(j)


//: [字典](@next)
