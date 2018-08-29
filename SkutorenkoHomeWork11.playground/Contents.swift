//: Playground - noun: a place where people can play

import UIKit

/*
1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
*/

func summa(value: () -> ()) {
    var sum = 0
    for i in 1...10 {
        sum = sum + i
        print("Cycle")
    }
    print("\(sum)")
    value()
}

summa {
    print("Closure")
}

/*
2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
*/

var numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10, 4, 3, 1, 8, 11]

print(numbers.sorted(by: { s1, s2 in return s1 < s2 } ))
print(numbers.sorted(by: { s1, s2 in return s1 > s2 } ))


/*
 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт.
 Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет.
 В самой функции создайте опшинал переменную.
 Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер.
 Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
 
 используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
*/

func sortMas(array:[Int], f:(Int, Int?) -> Bool) -> Int {
    var optional: Int?
    
    for i in array {
        if f(i,optional) {
            optional = i
        }
    }
    return optional!
}

let maximum = sortMas(array: numbers) { (s1, s2) -> Bool in
    if s2 != nil {
        return s1 > s2!
    }
    return true
}

maximum

let minimum = sortMas(array: numbers) { (s1, s2) -> Bool in
    if s2 != nil {
        return s1 < s2!
    }
    return true
}

minimum

/*
 4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
*/

var str = "во1ар:в6ар5ыв,амо67544чл?смср5л.аод6аыо5ва"
var newArray: [String] = []

for i in str {
    newArray.append(String(i))
}

newArray
newArray.sorted()

func backWords (s1: String, s2: String) -> Bool {
    func countChar (s: String) -> Int {
        switch s.uppercased() {
        case "о", "и", "а", "ы", "ю", "я", "э", "ё", "у", "е":
            return 1
        case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "Ш", "Щ":
            return 2
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            return 3
        default:
            return 4
        }
    }
    
    if countChar(s: s1) < countChar(s: s2) {
        return true
    } else if countChar(s: s1) == countChar(s: s2) {
        return s1.uppercased() < s2.uppercased()
    } else {
        return false
    }
}


/*
5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
 */

func sortMas2(array:[Int], f:(Int, Int?) -> Bool) -> Int {
    var optional: Int?
    
    for i in array {
        if f(i,optional) {
            optional = i
        }
    }
    return optional!
}

let maximum2 = sortMas2(array: numbers) { (s1, s2) -> Bool in
    if s2 != nil {
        return s1 > s2!
    }
    return true
}

maximum2

let minimum2 = sortMas2(array: numbers) { (s1, s2) -> Bool in
    if UTF8(s2) != nil {
        return UTF8(s1) < UTF8(s2)!
    }
    return true
}

minimum2
