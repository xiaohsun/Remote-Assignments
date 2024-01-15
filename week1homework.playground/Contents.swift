
//: ## Part 1: Git & GitHub

// 2.
// a. 看工作區內檔案的修改狀態
// b. 看修改後的檔案在進入 staging area 前的前後差異
// c. 把檔案放進 staging area 等待 commit
// d. 回到 commit 前的舊版本
// e. 把 staging area 的檔案送進 repository，也就是儲存新版本
// f. 看 commit 都歷史紀錄



//: ---
//: ## Part 2: Basic

// 1.
// var 用來宣告可以更改數值的變數、let 用來宣告不可以更改數值的常數

// 2.
let pi: Double = 3.14
// pi 為不會變動的值，故用 let 宣告
// pi 有小數點，故用 Float type

// 3.
let x: Int = 2
let y: Int = 4
let average = (x + y) / 2

// 4.
let averageInRecordSystem = Double(average)
// (10 / 3) 相除完是 Int，會無條件捨去小數點
// (10.0 / 3.0) 相除完是 Float，小數點會被保留

// 5.
let a = 10
let b = 3
let remainder = a % b
 
// 6.
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

// 7.
// 如果沒有指定 type，Swift 會依照 Type Inference 的規則，從 = 左邊推測右邊的變數或常數的 type

// 8.
// Hello world 為 string，而 phoneNumber 為 Int，無法指定 Int 為 String

// 9.
var salary = 22000
salary += 28000

// 10.
// Equality: ==



//: ---
//: ## Part 3: Collection

// 1.
var myFriends: [String] = []

// 2.
myFriends += ["Ian", "Bomi", "Kevin"]

// 3.
myFriends.append("Michael")

// 4.
myFriends.swapAt(0, 2)

// 5.
for friend in myFriends {
    print(friend)
}

// 6.
// myFriends 內沒有 index 5
// 由 myFriends.endIndex 可得到此 array index 最高為 4

// 7.
myFriends.first

// 8.
myFriends.last

// 9.
var myCountryNumber: [String: Int] = [:]

// 10.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

// 11.
myCountryNumber.updateValue(0, forKey: "GB")

// 12.
var emptyDictionary: [String: Int] = [:]

// 13.
myCountryNumber["US"] = nil



//: ---
//: ## Part 4: Control Flow

// 1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
let numberLastIndex = lottoNumbers.endIndex
for i in numberLastIndex-3..<numberLastIndex {
    print(lottoNumbers[i])
}

// 2.
for number in lottoNumbers.reversed() {
    print(number)
}

for number in lottoNumbers where number % 2 == 0 {
    print(number)
}

// 3.
var i = numberLastIndex - 1
while i >= 0 {
    print(lottoNumbers[i])
    i -= 1
}

i = 0
while i < numberLastIndex {
    if lottoNumbers[i] % 2 == 0 {
        print(lottoNumbers[i])
    }
    i += 1
}

// 4.
i = numberLastIndex - 1
repeat {
    print(lottoNumbers[i])
    i -= 1
} while i >= 0

i = 0
repeat {
    if lottoNumbers[i] % 2 == 0 {
        print(lottoNumbers[i])
    }
    i += 1
} while i < numberLastIndex

// 5.
// while 會先檢查條件，若符合條件後再開始 loop
// repeat-while 會先 loop 第一次，再檢查條件決定是否開始下一次的 loop，所以就算不符合條件，也會 loop 一次

// 6.
var isRaining = false
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

// 7.
var jobLevel : Int = 0
if jobLevel == 1 {
    print("Member")
} else if jobLevel == 2 {
    print("Team Leader")
} else if jobLevel == 3 {
    print("Manager")
} else if jobLevel == 4 {
    print("Director")
} else {
    print("We don't have this job")
}

switch jobLevel{
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}


//: ---
//: ## Part 5: Function

// 1.
// (1) return String
// (2) return Double

// 2.
func multiply(_ a: Int, _ b: Int = 10){
    print(a * b)
}

// 3.
// parameter name 為內部名，供 func 內部存取時使用的參數名
// argument label 為外部名，為呼叫 func 時所需輸入的參數名

// 4.
func greet(person name: String) -> String{
    return "Hello, \(name)"
}

print(greet(person: "Luke"))
