
// Lesson 3 - PermMissingElem
/*
 For example, given array A such that:
 
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 the function should return 4, as it is the missing element.
 */

func permMissingElem(_ A : inout [Int]) -> Int {
    
    // 加上遺失的那一元素
    let n = A.count + 1
    
    // 計算總和
    let sum = n * (n+1) / 2
    
    // 計算實際陣列總和
    let addTwo: (Int, Int) -> Int = { x, y in return x + y }
    let arraySum = A.reduce(0, addTwo)
    
    // 減掉得出結果
    let result = sum - arraySum
    
    return result
}
