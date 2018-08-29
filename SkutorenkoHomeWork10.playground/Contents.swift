//: Playground - noun: a place where people can play

import UIKit

/*

 1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.
*/

func victoryhand() -> String {
    let character = "\u{270C}"
    return character
}

func ru() -> String {
    let character = "\u{1F1F7}"
    return character
    
}

print(victoryhand() + ru())

/*
2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
*/

func cellColor(letter: String, number: Int) -> String {
    let abc = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
    let i = abc.index(of: letter)
    let j = number

    if i! % 2 == ((j - 1)  % 2) {
        return "black"
    } else {
        return "white"
    }
}

print(cellColor(letter: "a", number: 2))

/*
 3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
*/

func reverseArray(array: [String]) -> [String] {
    var newArray: [String] = []
    for char in array.reversed() {
        newArray.append(char)
    }
    return newArray
}

let mass = ["a", "b", "c", "d", "e", "f", "g", "h"]

var massString = reverseArray(array: mass)

print(massString)


func newReverseArray(array: [String]) -> [(String)] {
    var newArray: [String] = []
    for i in 0 ..< array.count {
        newArray.insert(array[i], at: 0)
    }
    return newArray
}

var massStringNew = newReverseArray(array: mass)

print(massStringNew)


func sequence(_ numbers: String...) -> [String] {
    var newArray: [String] = []
    for number in numbers {
        newArray.append(number)
    }
    return newReverseArray(array: newArray)
}

var newSequence = sequence("5", "4", "3")

print(newSequence)


/*
4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
*/



/*
5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
 */

func stringUpdate(string: String) -> String {
    var newString = ""
    var number: [String: String] = ["0": "one", "1": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine"]
    
    for i in string {
        switch i {
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            newString = newString + number[String(i)]!
        case "Б", "В", "Г", "Д", "Ж", "З", "Й", "К", "Л", "М", "Н", "П", "Р", "С", "Т", "Ф", "Х", "Ц", "Ч", "Ш", "Щ":
            newString = newString + String(i).lowercased()
        case "о", "и", "а", "ы", "ю", "я", "э", "ё", "у", "е":
            newString = newString + String(i).uppercased()
        default:
            break
        }
    }
    return newString
}

var oldString = stringUpdate(string: "оа.пД1р?9уЩ")

print(oldString)
