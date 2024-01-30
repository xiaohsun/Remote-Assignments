import UIKit


//: ## 1.
// Closure 是一個區塊，像 Function 一樣可以接受 parameter 和 return 資料，但沒有自己的名字
// Closure 必須指派給變數或是常數，或當成 parameter 傳入 Function

// ex.1)
let helloWorldClosure: () -> Void = {
    print("Hello, world!")
}

helloWorldClosure()

// ex.2)
var plusClosure: (Int, Int) -> Int = { $0 + $1 }

plusClosure(2, 2)

// ex.3)
func helloWorldFuncUseClosure(closure: () -> Void){
    closure()
}

helloWorldFuncUseClosure(closure: helloWorldClosure)



//: ## 2.
var oddNumberClosure: (Int) -> Bool = { $0 % 2 == 1 }

oddNumberClosure(5)
oddNumberClosure(2)



//: ## 3.
func printTriangle(layers: Int) {
    var number = 0
    var string: String = ""
    while layers > number {
        string += "*"
        print(string)
        number += 1
    }
}

printTriangle(layers: 5)
