//: Playground - noun: a place where people can play

import UIKit

/*
 1. Выполните задание #1 урока о базовых операторах: http://vk.com/topic-58860049_31536965
 
 Создать пять строковых констант
    Одни константы это только цифры, другие содержат еще и буквы
    Найти сумму всех этих констант приведя их к Int

 только вместо forced unwrapping и optional binding используйте оператор ??
 
 Когда посчитаете сумму, то представьте свое выражение в виде строки
 Например: 5 + nil + 2 + 3 + nil = 10
 
 но в первом случае используйте интерполяцию строк, а во втором конкатенацию
*/

let a = "1"
let b = "2b"
let c = "3"
let d = "4d"
let e = "5"
var sum = 0

var aTemp = Int(a) ?? 0
var bTemp = Int(b) ?? 0
var cTemp = Int(c) ?? 0
var dTemp = Int(d) ?? 0
var eTemp = Int(e) ?? 0

sum = aTemp + bTemp + cTemp + dTemp + eTemp
String(sum)
    
var aStr = Int(a) != nil ? a : "nil"
var bStr = Int(b) != nil ? b : "nil"
var cStr = Int(c) != nil ? c : "nil"
var dStr = Int(d) != nil ? d : "nil"
var eStr = Int(e) != nil ? e : "nil"

print("\(aStr) + \(bStr) + \(cStr) + \(dStr) + \(eStr) = \(sum)")
print(aStr + "+" + bStr + "+" + cStr + "+" + dStr + "+" + eStr + "=" + String(sum))

//print(Int(a) "+ "\(sum)")

/*
 Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
 можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C
*/

let char1 = "\u{1F496}"
let char2 = "\u{1F680}"
let char3 = "\u{1F1F7}"
let char4 = "\u{2660}"
let char5 = "\u{1F341}"

var str1 = "\(char1) \(char2) \(char3) \(char4) \(char5)"
str1.count


/*
 3. Создайте строку английский алфавит, все буквы малые от a до z
 задайте константу - один из символов этого алфавита
 Используя цикл for определите под каким индексов в строке находится этот символ
*/
let abc = "abcdefghijklmnopqrstuvwxyz"

var letter : Character = "z"
var count = 0

for index in abc {
    if index == letter {
        print(count)
    }
    count = count + 1
}
