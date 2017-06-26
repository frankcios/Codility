// Lesson 4 - maxCounters
/*
 You are given N counters, initially set to 0, and you have two possible operations on them:
 
 increase(X) − counter X is increased by 1,
 max counter − all counters are set to the maximum value of any counter.
 A non-empty zero-indexed array A of M integers is given. This array represents consecutive operations:
 
 if A[K] = X, such that 1 ≤ X ≤ N, then operation K is increase(X),
 if A[K] = N + 1 then operation K is max counter.
 For example, given integer N = 5 and array A such that:
 
 A[0] = 3
 A[1] = 4
 A[2] = 4
 A[3] = 6
 A[4] = 1
 A[5] = 4
 A[6] = 4
 the values of the counters after each consecutive operation will be:
 
 (0, 0, 1, 0, 0)
 (0, 0, 1, 1, 0)
 (0, 0, 1, 2, 0)
 (2, 2, 2, 2, 2)
 (3, 2, 2, 2, 2)
 (3, 2, 2, 3, 2)
 (3, 2, 2, 4, 2)
 The goal is to calculate the value of every counter after all operations.
 */

func maxCounters(N: Int, _ A: [Int]) -> [Int] {
    // 初始化一個計數器陣列
    let initialArray = Array(repeating: 0, count: N)
    var counterArray = initialArray
    // 儲存目前最大計數
    var maxCount = 0
    // 累加 maxCount
    var maxedCount = 0
    
    for op in A {
        if (op <= N) {
            counterArray[op - 1] += 1
            if (counterArray[op - 1] > maxCount) {
                maxCount = counterArray[op - 1]
            }
        } else if (op == N + 1) {
            maxedCount += maxCount
            maxCount = 0
            counterArray = initialArray
        }
    }
    
    var result = [Int]()
    // 1.將 counterArray 的每個元素加上 maxedCount
    // 2.並 append 到 result 陣列中
    counterArray.forEach { result.append(maxedCount + $0) }
    
    return result
}

var counterArr = [3, 4, 4, 6, 1, 4, 4]
maxCounters(N: 5, counterArr)