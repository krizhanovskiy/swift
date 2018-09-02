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

var figureKingWhite = Chess.king(color: .white, gorizontal: .e, vertical: 6)
var figureQueenWhite = Chess.queen(color: .white, gorizontal: .c, vertical: 8)
var figureKingBlack = Chess.king(color: .black, gorizontal: .e, vertical: 8)

var arrayFigure = [figureKingWhite, figureQueenWhite, figureKingBlack]


/*
2. Сделайте так, чтобы энумовские значения имели rawValue типа String.
 Каждому типу фигуры установите соответствующее английское название.
 
 Создайте функцию, которая выводит в консоль (текстово, без юникода) название фигуры, цвет и расположение.
 Используя эту функцию распечатайте все фигуры в массиве.
*/

//func printChess(Chess: Chess) -> String {
//    switch Chess {
//    case .king(let color, let gorizontal, let vertical):
//        return "test"
//    case .queen(let color, let gorizontal, let vertical):
//        return "test"
//    case .elephant(let color, let gorizontal, let vertical):
//        return "test"
//    case .rook(let color, let gorizontal, let vertical):
//        return "test"
//    }
//}

/*
3. Используя красивые юникодовые представления шахматных фигур, выведите в консоли вашу доску. Если клетка не содержит фигуры, то используйте белую или черную клетку. Это должна быть отдельная функция, которая распечатывает доску с фигурами (принимает массив фигур и ничего не возвращает)
*/

func printArrayFigure(array: [Chess]) {
    
    
    for arr in array {
        switch arr {
        case .king(_, let gorizontal, let vertical):
            if gorizontal == .d || vertical == 1 {
                print("_")
            }
        case .queen(_, let gorizontal, let vertical):
            if gorizontal.hashValue == 0 || vertical == 1 {
                print("_")
            }
        case .elephant(_, let gorizontal, let vertical):
            if gorizontal.hashValue == 0 || vertical == 1 {
                print("_")
            }
        case .rook(_, let gorizontal, let vertical):
            if gorizontal.hashValue == 0 || vertical == 1 {
                print("_")
            }
        }
    }
    
}

func cell(array: [Chess]){
    let blackSquare  = "◼️"
    let whiteSquare = "◻️"
    let whiteKing = "♔"
    let whiteQueen = "♕"
    let blackKing = "♚"
    var str = ""
    var flag = false
    
    //распечатка шахматной доски
    for i in 0..<8 {
        for j in 0..<8 {
            //проверка есть ли в данном клетке фигура
            for arr in array {
                switch arr {
                case .king(let color, let gorizontal, let vertical):
                    if gorizontal.hashValue == j+1 && vertical == i {
                        if color == .white {
                            str = str + whiteKing
                            print("\(i) \(j)")
                        } else {
                            str = str + blackKing
                            print("\(i) \(j)")
                        }
                        flag = true
                    }
                case .queen(let color, let gorizontal, let vertical):
                    if gorizontal.hashValue == j+1 && vertical == i {
                        if color == .white {
                            str = str + whiteQueen
                            print("\(i) \(j)")
                        }
                        flag = true
                    }
                default:
                    break
                }
            }
            // печать ячейки поля
            if i % 2 == j % 2 && flag != true {
                str = str + whiteSquare
            }
            if i % 2 != j % 2 && flag != true {
                str = str + blackSquare
            }
            print("\(i) \(j)")
        }
        //print("\(str)")
        
        str = ""
        flag = false
    }
}
cell(array: arrayFigure)

//printArrayFigure(array: arrayFigure)

/*
4. Создайте функцию, которая будет принимать шахматную фигуру и тюпл новой позиции. Эта функция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры так, как нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту функцию для нескольких фигур и распечатайте поле снова.
*/


