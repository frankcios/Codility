// Lesson 2 - CyclicRotation
/*
 Write a function:
 
 struct Results solution(int A[], int N, int K);
 
 For example,
 given array A = [3, 8, 9, 7, 6] and K = 3, the function should return [9, 7, 6, 3, 8]
 
 */

public func cyclicRotation(_ A : inout [Int], _ K : Int) -> [Int] {
    var bArray = Array(repeating: 0, count: A.count)
    for i in 0..<A.count {
        bArray[(i + K) % A.count] = A[i]
    }
    return bArray
}

var a = [3, 8, 9, 7, 6]
cyclicRotation(&a, 3)

// step0 [0, 0, 0, 0, 0]
// step1 [0, 0, 0, 3, 0]
// step2 [0, 0, 0, 3, 8]
// step3 [9, 0, 0, 3, 8]
// step4 [9, 7, 0, 3, 8]
// step5 [9, 7, 6, 3, 8]
