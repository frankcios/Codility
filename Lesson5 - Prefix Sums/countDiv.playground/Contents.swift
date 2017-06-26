// Lesson 5 - countDiv
/*
 that, given three integers A, B and K, returns the number of integers within the range [A..B] that are divisible by K, i.e.:
 
 { i : A ≤ i ≤ B, i mod K = 0 }
 For example, for A = 6, B = 11 and K = 2, your function should return 3, because there are three numbers divisible by 2 within the range [6..11], namely 6, 8 and 10.
 */

func countDiv(A: Int, B: Int, K: Int) -> Int {
    var count = 0
    // A, B 分別除以 K 再相減
    count = (B/K) - (A/K)
    
    // 如果A可以被K整除再+1
    if (A % K == 0) {
        count += 1
    }
    
    return count
}

countDiv(A: 6, B: 11, K: 2)


