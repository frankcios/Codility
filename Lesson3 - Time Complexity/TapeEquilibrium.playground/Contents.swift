// Lesson 3 - TapeEquilibrium
/*
 that, given a non-empty zero-indexed array A of N integers, returns the minimal difference that can be achieved.
 For example, given:
 
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 
 We can split this tape in four places:
 
 P = 1, difference = |3 − 10| = 7
 P = 2, difference = |4 − 9| = 5
 P = 3, difference = |6 − 7| = 1
 P = 4, difference = |10 − 3| = 7
 
 the function should return 1, as explained above.
 
 - 返回最小差異絕對值
 */

func tapeEquilibrium(_ A : inout [Int]) -> Int {
    let arraySum = A.reduce(0) { $0 + $1 }
    // 初始化成極大值
    var globalMinDiff = Int.max
    var curSum = 0
    for i in 0..<A.count {
        curSum += A[i]
        // 返回比較後較小的值
        globalMinDiff = min(globalMinDiff, abs(arraySum - 2 * curSum))
    }
    
    return globalMinDiff
}