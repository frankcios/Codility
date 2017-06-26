// Lesson 4 - frogRiverOne
/*
 For example, you are given integer X = 5 and array A such that:
 
 A[0] = 1
 A[1] = 3
 A[2] = 1
 A[3] = 4
 A[4] = 2
 A[5] = 3
 A[6] = 5
 A[7] = 4
 In second 6, a leaf falls into position 5. This is the earliest time when leaves appear in every position across the river.
 
 Write a function:
 
 public func solution(_ X : Int, _ A : inout [Int]) -> Int
 
 that, given a non-empty zero-indexed array A consisting of N integers and integer X, returns the earliest time when the frog can jump to the other side of the river.
 
 - 最早出現1~X在內的所有整數的index
 */

func frogRiverOne(_ X: Int, _ A: inout [Int]) -> Int {
    var setA = Set<Int>()
    
    for i in 0..<A.count {
        setA.insert(A[i])
        
        if (setA.count == X) {
            return i
        }
    }
    
    return -1
}

var frogRiverArr = [3, 1, 3]
frogRiverOne(60, &frogRiverArr)