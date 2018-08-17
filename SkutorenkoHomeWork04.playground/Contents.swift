//: Playground - noun: a place where people can play

import UIKit

/*
1. Создать пять строковых констант
Одни константы это только цифры, другие содержат еще и буквы
Найти сумму всех этих констант приведя их к Int
(Используйте и optional binding и forced unwrapping)
*/
let a = "1"
let b = "2b"
let c = "3"
let d = "4d"
let e = "5"
var sum = 0

//forced unwrapping
if Int(a) != nil {
    sum = sum + Int(a)!
}
if Int(b) != nil {
    sum = sum + Int(b)!
}
if Int(c) != nil {
    sum = sum + Int(c)!
}

//optional binding
if let tempVar = Int(d) {
    sum = sum + tempVar
}
if let tempVar = Int(e) {
    sum = sum + tempVar
}

print(sum)

/*
2. С сервера к нам приходит тюпл с тремя параметрами:
statusCode, message, errorMessage (число, строка и строка)
в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле
если statusCode от 200 до 300 исключительно, то выводите message,
в противном случает выводите errorMessage
После этого проделайте тоже самое только без участия statusCode
*/

var serverResponse : (statusCode: Int, message: String?, errorMessage: String?)
serverResponse = (404,"Text", "Not found")

if serverResponse.statusCode >= 200 && serverResponse.statusCode < 300 {
    print(serverResponse.message)
} else {
    print(serverResponse.errorMessage)
}

if serverResponse.message != nil {
    print(serverResponse.message)
} else {
    print(serverResponse.errorMessage)
}


/*
3. Создайте 5 тюплов с тремя параметрами:
имя, номер машины, оценка за контрольную
при создании этих тюплов не должно быть никаких данных
после создания каждому студенту установите имя
некоторым установите номер машины
некоторым установите результат контрольной
выведите в консоль:
- имена студента
- есть ли у него машина
- если да, то какой номер
- был ли на контрольной
*/

var student1 : (name: String!, number: String?, evaluation: Int?)
var student2 : (name: String!, number: String?, evaluation: Int?)
var student3 : (name: String!, number: String?, evaluation: Int?)
var student4 : (name: String!, number: String?, evaluation: Int?)
var student5 : (name: String!, number: String?, evaluation: Int?)

student1.name = "Alex"
student2.name = "Smit"
student3.name = "Jain"
student4.name = "Usuf"
student5.name = "Fedy"

student1.number = "O462MO32"
student2.number = "Smit"
student3.number = "H700YY32"
student4.number = "K302YE37"


student1.evaluation = 5
student2.evaluation = 3
student4.evaluation = 5

print(student1.name!)
if student1.number != nil {
    print(student1.number)
}
if student1.evaluation != nil {
    print(student1.evaluation)
}

print(student2.name!)
if student2.number != nil {
    print(student2.number)
}
if student2.evaluation != nil {
    print(student2.evaluation)
}

print(student3.name!)
if student1.number != nil {
    print(student3.number)
}
if student1.evaluation != nil {
    print(student3.evaluation)
}

print(student4.name!)
if student4.number != nil {
    print(student4.number)
}
if student4.evaluation != nil {
    print(student4.evaluation)
}

print(student5.name!)
if student5.number != nil {
    print(student1.number)
}
if student1.evaluation != nil {
    print(student5.evaluation)
}
