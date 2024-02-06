import UIKit

//: ## 4.
func printPyramid(layers: Int) {
    let space = " "
    let star = "*"
    var spaceAmount = layers - 1
    var starAmount = 1
    var spaceString: String
    var starString:String
    
    while spaceAmount >= 0 {
        spaceString = String(repeating: space, count: spaceAmount)
        starString = String(repeating: star, count: starAmount)
        print(spaceString + starString + spaceString)
        spaceAmount -= 1
        starAmount += 2
    }
}

printPyramid(layers: 5)

//: ## 5.
// 1. 尋找穿搭靈感的 app，用戶可以上傳穿搭、標記品名、價錢，並儲存別人的穿搭做參考。
// 2. 很直覺的圖像式 ToDoList ，讓用戶更有動力追蹤自己的短中長期目標。
