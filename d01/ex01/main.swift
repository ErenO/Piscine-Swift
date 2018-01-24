//
//  test.swift
//
//
//  Created by Eren Ozdek on 12/06/2017.
//
//

let card1 : Card = Card(Color: Color.diamonds, Value: Value.jack)
let card2 : Card = Card(Color: Color.diamonds, Value: Value.queen)
let card3 : Card = Card(Color: Color.diamonds, Value: Value.jack)

//init
print(card1)
print(card2)
print(card3)

//isEqual
print("card1 isEqual card2 : \(card1.isEqual(card2))")
print("card1 isEqual card3 : \(card1.isEqual(card3))")
print("card1 isEqual card2 : \(card2.isEqual(card3))")

//==
print("card1 == card2 : \(card1 == card2)")
print("card1 == card3 : \(card1 == card3)")
print("card2 == card3 : \(card2 == card3)")
