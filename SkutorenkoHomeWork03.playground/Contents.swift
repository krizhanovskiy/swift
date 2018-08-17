//: Playground - noun: a place where people can play

import UIKit

/*
1. Создать тюпл с тремя параметрами:

- максимальное количество отжиманий
- максимальное количество подтягиваний
- максимальное количество приседаний

Заполните его своими достижениями :)

Распечатайте его через println()
*/

var sportСharacteristicMy = (maxPushUps: 5, maxPullUps: 6, maxSitUps: 7)
print(sportСharacteristicMy)

/*
2. Также сделайте три отдельных вывода в консоль для каждого параметра

При том одни значения доставайте по индексу, а другие по параметру
*/
print(sportСharacteristicMy.0)
print(sportСharacteristicMy.1)
print(sportСharacteristicMy.2)

print(sportСharacteristicMy.maxPushUps)
print(sportСharacteristicMy.maxPullUps)
print(sportСharacteristicMy.maxSitUps)

/*
3. Создайте такой же тюпл для другого человека (супруги или друга)
с такими же параметрами, но с другими значениями

Используйте промежуточную переменную чтобы поменять соответствующие значения
первого тюпла на значения второго
*/

var sportСharacteristicWife = (maxPushUps: 8, maxPullUps: 9, maxSitUps: 10)
var tempVar = 0
tempVar = sportСharacteristicWife.maxPushUps
sportСharacteristicWife.maxPushUps = sportСharacteristicMy.maxPushUps
sportСharacteristicMy.maxPushUps = tempVar

tempVar = sportСharacteristicWife.maxPullUps
sportСharacteristicWife.maxPullUps = sportСharacteristicMy.maxPullUps
sportСharacteristicMy.maxPullUps = tempVar

tempVar = sportСharacteristicWife.maxSitUps
sportСharacteristicWife.maxSitUps = sportСharacteristicMy.maxSitUps
sportСharacteristicMy.maxSitUps = tempVar

/*
4. Создайте третий тюпл с теми же параметрами, но значения это разница
между соответствующими значениями первого и второго тюплов

Результат выведите в консоль
 */

var sportСharacteristicMyMinusWife = (maxPushUps: 0, maxPullUps: 0, maxSitUps: 0)
sportСharacteristicMyMinusWife.maxPushUps = sportСharacteristicMy.maxPushUps - sportСharacteristicWife.maxPushUps
sportСharacteristicMyMinusWife.maxPullUps = sportСharacteristicMy.maxPushUps - sportСharacteristicWife.maxPushUps
sportСharacteristicMyMinusWife.maxPullUps = sportСharacteristicMy.maxPushUps - sportСharacteristicWife.maxPushUps

