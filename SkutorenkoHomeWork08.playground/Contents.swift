//: Playground - noun: a place where people can play

import UIKit

/*
 1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(
 
 После всех этих перетрубаций посчитайте общий бал группы и средний бал
*/

//var student = [String: Int]()
var student: [String: Int] = ["Vova Krizhanovskiy": 5, "Ivan Tabachnokov": 3, "Anton Chernyshev": 3,"Daria Boytsova": 5]

//изменение данных
student["Ivan Tabachnokov"] = 4
student["Anton Chernyshev"] = 5

//добавление новых
student["Aleksandr Evsyukov"] = 2
student["Oleg Bessonov"] = 1

student["Vova Krizhanovskiy"] = nil

for (studentName, studentScore) in student {
    print("\(studentName): \(studentScore)")
}

var score = 0
var middleScore = 0

for (studentName, studentScore) in student {
    print("\(studentName): \(studentScore)")
}


/*
 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
*/



/*
 3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
 
 Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).
 */


