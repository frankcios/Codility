import Foundation

// Lesson 3 - FrogJmp
/*
 that, given three integers X, Y and D, returns the minimal number of jumps from position X to a position equal to or greater than Y.
 
 For example, given:
 
 X = 10
 Y = 85
 D = 30
 the function should return 3, because the frog will be positioned as follows:
 
 after the first jump, at position 10 + 30 = 40
 after the second jump, at position 10 + 30 + 30 = 70
 after the third jump, at position 10 + 30 + 30 + 30 = 10
 */

func frogJmp(X : Int, Y : Int, D : Int) -> Int {
    // ceil函數 -> 正數會直接+1，負數會捨去任何小數部分
    // ex 7.2 -> 8, -5.6 -> -5
    return Int(ceil(Double(Y - X) / Double(D)))
}
