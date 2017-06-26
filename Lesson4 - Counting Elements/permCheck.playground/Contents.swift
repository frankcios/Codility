// Lesson 4 - permCheck
/*
 For example, array A such that:
 
 A[0] = 4
 A[1] = 1
 A[2] = 3
 A[3] = 2
 is a permutation, but array A such that:
 
 A[0] = 4
 A[1] = 1
 A[2] = 3
 is not a permutation, because value 2 is missing.
 
 The goal is to check whether array A is a permutation.
 */

func permCheck(_ A: inout [Int]) -> Int {
    let arrCount = A.count
    
    // 將Array A 當成是Set()的參數 得到一組無順序且不重複的資料
    // 假如變成set後，元素個數沒減少，且元素最大值為變成set前的個數
    // 那代表該陣列是個 permutation
    if Set(A).count == arrCount && A.max() == arrCount {
        return 1
    }
    return 0
}

var permCheckArr = [4, 3, 2]
var permCheckArr1 = [3, 1, 2]
permCheck(&permCheckArr)
permCheck(&permCheckArr1)