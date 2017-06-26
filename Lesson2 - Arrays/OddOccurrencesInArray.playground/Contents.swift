// Lesson 2 - OddOccurrencesInArray
/*
 that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.
 
 For example, given array A such that:
 
 A[0] = 9  A[1] = 3  A[2] = 9
 A[3] = 3  A[4] = 9  A[5] = 7
 A[6] = 9
 the function should return 7
 
 - 找出陣列中兩兩不成對那個數
 */

func oddOccurencesInArray(_ A: inout [Int]) -> Int {
    
    var result = 0
    
    for i in 0..<A.count{
        // 做XOR運算
        result = result ^ A[i]
    }
    
    return result
}

var a = [9, 3, 9, 3, 9, 7, 9]
oddOccurencesInArray(&a)

//      0000
//      1001        1. 0^9
//XOR   1001 = 9

//      1001
//      0011        2. 9^3
//XOR   1010 = 11

//      1010
//      1001        3. 11^9
//XOR   0011 = 3

//      0011
//      0011        4. 3^3
//XOR   0000 = 0

//      0000
//      1001        5. 0^9
//XOR   1001 = 9

//      1001
//      0111        6. 9^7
//XOR   1110 = 14

//      1110
//      1001        7. 14^9
//XOR   0111 = 7
