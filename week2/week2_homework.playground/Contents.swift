import UIKit



//: ## Part 1: Object-Oriented Swift

enum Gender {
    case male
    case female
    case undefined
}

// 1.
class Animal {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat(){
        print("I eat everything!")
    }
}


// 2.
class Elephant: Animal {
    override func eat() {
        print("I eat apple!")
    }
}

class Tiger: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}

// 3.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))
let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: .male)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

// 4.
// instance 為使用 class、struct 藍圖所產生的實例（object）；為 class, struct 賦予 initilizer 的值來進行初始化並產生 instance

// 5.
// struct 為 Value Type，struct 並沒有繼承功能；class 為 Reference Type，有繼承功能

// 6. 
// value type 將從原本的資料複製產生新的資料，reference type 則是共享同一份資料，舉例如下 👇

struct StructHero {
    var name: String
    var universe: String
    
}

var structHero = StructHero(name: "Iron Man", universe: "Marvel")
var anotherStructHero = structHero
anotherStructHero.name = "The Hulk"
print(structHero.name) // Iron Man
print(anotherStructHero.name) // The Hulk
// 複製後皆為獨立的個體，不互相影響

class ClassHero {
    var name: String
    var universe: String
    
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}

var classHero = ClassHero(name: "Iron Man", universe: "Marvel")
var anotherClassHero = classHero
anotherClassHero.name = "The Hulk"
print(classHero.name) // The Hulk
print(anotherClassHero.name) // The Hulk
// 更改複製品的值，原始 class 的值也會跟著改變

// 7.
// instance method 指需要建立一個 instance 才能呼叫方法
// type method 為該型別本身的方法，不需要建立實例就可以直接呼叫方法，宣告方式為在 func 前加上 static

// 8.
// instance method 的 self 為該實例本身
// type method 的 self 為該型別本身


//: ## Part 2: Enumerations and Optionals in Swift

// 1.
enum Gasoline: String {
    case ninetyTwo = "92"
    case ninetyFive = "95"
    case ninetyEight = "98"
    
    var price: Double {
        switch self {
        case .ninetyEight:
            28.9
        case .ninetyTwo:
            30.4
        case .ninetyFive:
            32.4
        }
    }
    
    func getPrice() -> Double {
        switch self {
        case .ninetyEight:
            28.9
        case .ninetyTwo:
            30.4
        case .ninetyFive:
            32.4
        }
    }
}

// 若 enum 有 associated value ，使用者則可以宣告並儲存相關聯的 value，例如👇

enum foods {
    case taiwanese(dish: String, vegan: Bool, spiciness: Int)
    case korean(dish: String, vegan: Bool, spiciness: Int)
}

let stinkyTofu = foods.taiwanese(dish: "Stinky Tofu", vegan: true, spiciness: 0)
let kimchi = foods.korean(dish: "Kimchi", vegan: true, spiciness: 5)



// 2.
class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class People {
    var pet: Pet?
}

let hana = People()
hana.pet = Pet(name: "Coco")


func findOutPetsNameGuardLet(people: People) {
    guard let petName = people.pet?.name else {
        return
    }
    print(petName)
}

findOutPetsNameGuardLet(people: hana)

func findOutPetsNameIfLet(people: People){
    if let pet = people.pet {
        print(pet.name)
    }
}

findOutPetsNameIfLet(people: hana)


//: ## Part 3: Protocol in Swift

protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}

struct Person: PoliceMan {
    let name: String
    
    let toolMan: ToolMan
    
    func arrestCriminals() {
        print("Gotcha!")
    }
}

struct Engineer: ToolMan{
    func fixComputer() {
        print("I can't fix your heart:(")
    }
}

let steven = Person(name: "Steven", toolMan: Engineer())


//: ## Part 4: Error Handling in Swift

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

do {
    try GuessNumberGame().guess(number: 20)
} catch {
    print(error)
}

