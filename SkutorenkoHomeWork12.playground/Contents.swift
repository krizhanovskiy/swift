//: Playground - noun: a place where people can play

import UIKit

/*
 1. Создать энум с шахматными фигурами (король, ферзь и т.д.).
 Каждая фигура должна иметь цвет белый либо черный (надеюсь намек понят), а так же букву и цифру для позиции. Создайте пару фигур с расположением на доске, так, чтобы черному королю был мат :) Поместите эти фигуры в массив фигур
*/


enum Chess {
    case king (color: Color, gorizontal: Gorizontal, vertical: Int)
    case queen (color: Color, gorizontal: Gorizontal, vertical: Int)
    case elephant (color: Color, gorizontal: Gorizontal, vertical: Int)
    case rook (color: Color, gorizontal: Gorizontal, vertical: Int)
    
    enum Color {
        case white
        case black
    }
    
    enum Gorizontal {
        case a
        case b
        case c
        case d
        case e
        case f
        case g
        case h
    }
}

var figureKingWhite = Chess.king(color: .white, gorizontal: .c, vertical: 8)
var figureQueenWhite = Chess.queen(color: .white, gorizontal: .c, vertical: 8)
var figureKingBlack = Chess.king(color: .black, gorizontal: .e, vertical: 8)

var arrayFigure = [figureKingWhite, figureQueenWhite, figureKingBlack]
arrayFigure

/*
2. Сделайте так, чтобы энумовские значения имели rawValue типа String.
 Каждому типу фигуры установите соответствующее английское название.
 Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение.
 Используя эту функцию распечатайте все фигуры в массиве.
*/

enum ChessName : String {
    case king = "King"
    case queen = "Queen"
    case elephant = "Elephant"
    case rook = "Rook"
}

func printEnum () {
    for i in arrayFigure {
        print("\(i)!")
    }
}

/*
3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
*/



/*
4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.
*/


