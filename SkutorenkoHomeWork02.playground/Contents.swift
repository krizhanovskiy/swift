//: Playground - noun: a place where people can play

import UIKit

//Выведите в консоль минимальные и максимальные значения базовых типов
Int.max
Int.min
print("int.max=", Int.max, "int.min=", Int.min)

Int8.max
Int8.min
print("int8.max=", Int.max, "int8.min=", Int.min)

Int16.max
Int16.min
print("int16.max=", Int.max, "int16.min=", Int.min)

Int32.max
Int32.max
print("int32.max=", Int.max, "int32.min=", Int.min)

Int64.max
Int64.max
print("int64.max=", Int.max, "int64.min=", Int.min)

//Создайте 3 константы с типами Int, Float и Double
//Создайте другие 3 константы, тех же типов: Int, Float и Double,
//при чем каждая из них это сумма первых трех, но со своим типом

let intValue = 1
let floatValue : Float = 2.6
let doubleValue = 3.7

let sumInt = Int(Double(intValue) + Double(floatValue) + Double(doubleValue))
print(sumInt)
let sumFoat : Float = Float(intValue) + floatValue + Float(doubleValue)
print(sumFoat)
let sumDouble = Double(intValue) + Double(floatValue) + doubleValue
print(sumDouble)


//Сравните Int результат суммы с Double и выведите отчет в консоль
if Double(sumInt) >= sumDouble {
    print("sumInt", sumInt, "more sumDouble", sumDouble)
} else
{
    print("sumDouble", sumDouble, "more sumint", sumInt)
}
