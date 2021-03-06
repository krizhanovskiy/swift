//: Playground - noun: a place where people can play

import UIKit

/*
1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.
*/
let str = "Привет! как дела? Мы ходили в кино. Фильм был не очень. Как дела на работе? Приходится ли тебе часто задерживаться? Вчера проснулся в 6-30. А вчера приехал на работу в 17-00. Пробка была ужасная, примерно 15 километров."

//б в г д ж з й к л м н п р с т ф х ц ч ш щ
//о и а ы ю я э ё у е
//0...9

var number = 0
var consonants = 0
var vowels = 0
var characters = 0

for i in str {
    switch i {
    case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
        number = number + 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ":
        consonants = consonants + 1
    case "о", "и", "а", "ы", "ю", "я", "э", "ё", "у", "е":
        vowels = vowels + 1
    case "." , ",", ":", "-", "!", "?":
        characters = characters + 1
    default:
        break
    }
}

print("\(number)")
print("\(consonants)")
print("\(vowels)")
print("\(characters)")


/*
2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
*/
//https://studopedia.ru/11_14383_zhiznenniy-tsikl-razvitiya-cheloveka.html

var age = 33

switch age {
case 0:
    print("стадия новорожденности и младенчество")
case 1...3:
    print("стадия раннего детства")
case 3...6:
    print("стадия дошкольного детства")
case 6...12:
    print("стадия младшего школьного дет­ства")
case 12...15:
    print("под­ростковый (или пубертатный) период")
case 15...23:
    print("юно­шеский (ювенильный) период")
case 23...33:
    print("cтадия ран­ней зрелости, или молодость")
default:
    break
}

/*
3. У вас есть имя отчество и фамилия студента (русские буквы).
 Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет,
 то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет,
 то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии.
 В противном случае обращайтесь к нему по полному имени.
*/

var name = "Владимир"
var patronymic = "Михайлович"
var surname = "Крижановский"

var man = (name, patronymic, surname)

switch man {
case (name, _, _) where name[name.index(name.startIndex, offsetBy: 0)] == "A" || name[name.index(name.startIndex, offsetBy: 0)] == "О":
    print("\(man.0)")
case (_, patronymic, _) where patronymic[patronymic.index(patronymic.startIndex, offsetBy: 0)] == "В" || patronymic[patronymic.index(patronymic.startIndex, offsetBy: 0)] == "Д":
    print("\(man.0) \(man.1)")
case (_, _, surname) where patronymic[patronymic.index(patronymic.startIndex, offsetBy: 0)] == "Е" || patronymic[patronymic.index(patronymic.startIndex, offsetBy: 0)] == "З":
    print("\(man.2)")
default:
    print("\(man.0) \(man.1) \(man.2)")
}

/*
4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
*/

//Карабли


//Точка в которую летит снаряд


//Провера попал или нет

var x = 1
var y = 2

var cell = (x, y)

switch cell {
case let (x, y):
    print("\(x,y)")
default:
    break
}
