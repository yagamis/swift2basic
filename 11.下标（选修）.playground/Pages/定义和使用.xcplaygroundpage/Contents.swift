//: ----
//:  - [小波说雨燕 3天学会Swift 4](http://www.xiaoboswift.com)
//:  - 全集课件：[github.com/yagamis](http://github.com/yagamis/swift2basic)
//: ----
//: - 下标是一种特殊的方法，通常用于访问集合或序列类型中的元素。
//: - 用法: 实例名[索引] 。可以访问或设置其中元素。
//: ----
//:  - 定义：一个名为subscript的计算属性；
//     subscript(index: 参数类型) -> 返回类型 {
//         get {}
//         set {}
//     }
//:  - ☀️常见的用法：字典、数组、集合等。

var odds = [1,3,5,7,9]
odds[3]

let citys = ["春":"昆明", "蓉": "成都", "羊":"广州"]
citys["沪"]

//:  - 1⃣️通过下标简化调用方法调用

import Foundation

struct Sphere {
    //体积
    subscript(r: Double) -> Double {
      return (4/3) * .pi * pow(r, 3)
    }
}

let earth = Sphere()
earth[6371]


//:  - 2⃣️多维下标。实现一个二维行列式矩阵（选修）
//       第0列  第1列
// 第0行   1     3        索引：当前列 + 0
// 第1行   5     7        索引：当前列 + 之前所有行列总数（当前行 × 总列数）
//
// 通过变换成Int数组[1, 3, 5, 7]，以索引来访问.⚠️确保数组索引不得越界。
struct Matrix {
    var rows, cols : Int
    var grid: [Int]
    
    init(rows: Int, cols: Int) {
        self.cols = cols
        self.rows = rows
        
        grid = Array(repeating: 0, count: rows * cols)
    }
    
    func isValidIndex(row:Int,col:Int) -> Bool {
        return row >= 0 && row < rows && col >= 0 && col < cols
    }
    
    subscript(row:Int, col:Int) ->Int {
        get {
            assert(isValidIndex(row: row, col: col), "数组索引越界")
            return grid[col + (row * cols)]
        }
        set {
            assert(isValidIndex(row: row, col: col), "数组索引越界")
            
            grid[col + (row * cols)] = newValue
        }
    }
}

var matrix1 = Matrix(rows: 3, cols: 3)
matrix1[0,0] = 1
matrix1[0,1] = 3
matrix1[0,2] = 5

matrix1[1,0] = 2
matrix1[1,1] = 4
matrix1[1,2] = 6

matrix1[2,0] = -1
matrix1[2,1] = -3
matrix1[2,2] = -5

matrix1.grid

matrix1[2,2]

//: ----
//:



//:  [](@next)
