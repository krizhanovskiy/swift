//: Playground - noun: a place where people can play

import UIKit

/*
 1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(
 
 После всех этих перетрубаций посчитайте общий бал группы и средний бал
 */

var student: [String: Int] = ["Vova Krizhanovskiy": 5, "Ivan Tabachnokov": 3, "Anton Chernyshev": 3,"Daria Boytsova": 5]

//изменение данных
student["Ivan Tabachnokov"] = 4
student["Anton Chernyshev"] = 5

//добавление новых
student["Aleksandr Evsyukov"] = 2
student["Oleg Bessonov"] = 1

student["Vova Krizhanovskiy"] = nil

var score = 0
var middleScore = 0

print("------------------------------")

for (studentName, studentScore) in student {
    print("\(studentName): \(studentScore)")
    score = score + studentScore
}

print("------------------------------")
print("\(score)")
print("\(Float(score)/Float(student.count))")
student.count
print("------------------------------")

/*
 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
 */

var dicMonthsDays: [String: Int] = ["january": 31, "february": 28, "march": 31, "april": 30, "may": 31, "june": 30, "july": 31, "august": 31, "september": 30, "october": 31, "november": 30, "december": 31]

for (month, day) in dicMonthsDays {
    print("\(month): \(day)")
}
print("------------------------------")

for i in dicMonthsDays.keys {
    print("\(i): \(dicMonthsDays[i]!)")
}
print("------------------------------")

/*
 3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
 
 Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).
 */
var abc = ["a", "b", "c", "d", "e", "f", "g", "h"]
var number = [1, 2, 3, 4, 5, 6, 7, 8]
var namesOfIntegers = [String: Bool]()
var str = ""

for i in 0 ..< abc.count {
    for j in 0 ..< number.count {
        if i % 2 == j % 2 {
            namesOfIntegers[abc[i] + String(number[j])] = false
        } else {
            namesOfIntegers[abc[i] + String(number[j])] = true
        }
    }
}

for (index, color) in namesOfIntegers {
    print("\(index): \(color)")
}
