/* Lesson 1 - BinaryGap
 
 A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
 
 For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.
 
 -  計算二進制數的兩個1之間包含最多0的長度
 */

func binary_gap(_ number: Int) -> Int {
    var max_gap: Int = 0
    var current_gap: Int = 0
    
    var n = number
    
    // 省略第一個 "1" 之前的 0
    while n > 0 && n % 2 == 0 {
        n /= 2
    }
    
    while n > 0 {
        // 經過之前的while loop後，餘數為1
        n /= 2
        
        // 重置計數器並且儲存新的gap
        if n % 2 == 1 {
            // 碰到1才會開始算gap
            if current_gap > max_gap {
                max_gap = current_gap
                current_gap = 0
            }
            // 如果不是1，就繼續計數
        } else {
            current_gap += 1
        }
    }
    
    return max_gap
}

binary_gap(65)

// 65 = 0b1000001
// 兩個1之間有五個0