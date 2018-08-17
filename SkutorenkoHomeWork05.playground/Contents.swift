//: Playground - noun: a place where people can play

import UIKit

/*
 1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
*/
let year = (january: 31, february: 28, march: 31, april: 30, may: 31, june: 30, july: 31, august: 31, september: 30, october: 31, november: 30, december: 31)
var birthDay = 4
var birthMonth = 9

let secondInDay = 24 * 60 * 60

var secondBirthdayToStartYear = 0
var sum = 0
var countMonth = 1
if countMonth <= birthMonth {
    sum += year.january * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.february * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.march * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.april * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.may * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.june * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.july * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.august * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.september * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.october * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.november * secondInDay
    countMonth = countMonth + 1
}
if countMonth <= birthMonth {
    sum += year.december * secondInDay
    countMonth = countMonth + 1
}

print(sum)

/*
2. Посчитайте в каком квартале вы родились
*/
var month : String!
month = "september"

if month == "march" || month == "april" || month == "may" {
    print("1st quarter")
} else
if month == "june" || month == "july" || month == "august" {
    print("2nd quarter")
}
if month == "september" || month == "october" || month == "november" {
    print("3rd quarter")
}
if month == "december" || month == "january" || month == "february" {
    print("4th quarter")
}


/*
 3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением.
 В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.
 Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций
*/

var a = 1
var b = 2
var c = 3
var d = 4
var e = 5

let result = a - b + c + d - e


/*
 4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля.
 Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
 */

let x : Int!
let y : Int!
x = 3
y = 3

if x % 2 != 0 {
    if y % 2 != 0 {
        print("Black")
    } else {
        print("White")
    }
} else {
    if y % 2 == 0 {
        print("Black")
    } else {
        print("Wtihe")
    }
}

1 % 2
2 % 2
