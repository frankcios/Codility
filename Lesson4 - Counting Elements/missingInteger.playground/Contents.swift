// Lesson 4 - missingInteger
/*
 that, given a non-empty zero-indexed array A of N integers, returns the minimal positive integer (greater than 0) that does not occur in A.
 
 For example, given:
 
 A[0] = 1
 A[1] = 3
 A[2] = 6
 A[3] = 4
 A[4] = 1
 A[5] = 2
 the function should return 5.
 */

func missingInteger(_ A : inout [Int]) -> Int {
    
    let SetA = Set(A)
    var result = 1
    
    while SetA.contains(result) {
        result += 1
    }
    
    return result
}

var missingTest = [1, 3, 6, 4, 1, 2]
missingInteger(&missingTest)