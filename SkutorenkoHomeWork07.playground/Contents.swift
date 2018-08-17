//: Playground - noun: a place where people can play

import UIKit

/*
 1. создать массив "дни в месяцах"
 12 элементов содержащих количество дней в соответствующем месяце
 
 используя цикл for и этот массив
 
 - выведите количество дней в каждом месяце (без имен месяцев)
 - используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
 - сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
 - сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
 
 - для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
*/
//(january: 31, february: 28, march: 31, april: 30, may: 31, june: 30, july: 31, august: 31, september: 30, october: 31, november: 30, december: 31)
var arrayDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var arrayMonths = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
var arrayDaysMonths = [("january", 31), ("february", 28), ("march", 31), ("april", 30), ("may", 31), ("june", 30), ("july", 31), ("august", 31), ("september", 30), ("october", 31), ("november", 30), ("december", 31)]

for i in 0 ..< arrayDays.count {
    print(String(arrayDays[i]))
}

for i in 0 ..< arrayDays.count {
    print(arrayMonths[i] + " - " + String(arrayDays[i]))
}

var tmp = 0
for i in 0 ..< arrayDays.count {
    tmp = arrayDays.count - i - 1
    print(String(arrayDays[tmp]))
}

for i in arrayDaysMonths {
    print("\(i.0) \(i.1)")
}

/*
 2. Сделайте первое задание к уроку номер 4 используя массивы:
 
 (создайте массив опшинал интов и посчитайте сумму)
 
 - в одном случае используйте optional binding
 - в другом forced unwrapping
 - а в третьем оператор ??
*/

/*
Создать пять строковых констант
 Одни константы это только цифры, другие содержат еще и буквы
 Найти сумму всех этих констант приведя их к Int
 (Используйте и optional binding и forced unwrapping)
 */

var arrayStringNumbers = ["1", "2b", "3", "4d", "5"]
var sum = 0

for i in 0 ..< arrayStringNumbers.count {
    //forced unwrapping
    if Int(String(arrayStringNumbers[i])) != nil {
        sum = sum + Int(String(arrayStringNumbers[i]))!
    }
}
print(sum)

sum = 0
for i in 0 ..< arrayStringNumbers.count {
    //optional binding
    if let tempVar = Int(String(arrayStringNumbers[i])) {
        sum = sum + tempVar
    }
}
print(sum)

sum = 0
for i in 0 ..< arrayStringNumbers.count {
    //??
    let tmp = Int(String(arrayStringNumbers[i])) ?? 0
    sum = sum + tmp
}
print(sum)


/*
 3. создайте строку алфавит и пустой массив строк
 в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
*/

let abc = "abcdefghijklmnopqrstuvwxyz"
var arrayAbc = [String]()


for i in abc.indices {
    arrayAbc.insert(String(abc[i]), at: 0)
}

for i in 0 ..< arrayAbc.count {
    print(String(arrayAbc[i]))
}
