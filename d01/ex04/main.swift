//
//  test.swift
//
//
//  Created by Eren Ozdek on 12/06/2017.
//
//

import Foundation

var t = Deck(sorted: false)

print(">>>>>SORTED FALSE<<<<< : \(t)")
//52 print de la methode draw
for i in 0..<52 {
    print(t.draw()!)
}

let uno = Card(Color: Color.clubs, Value: Value.ace)
//outs false
print(">>>>>>>OUTS<<<<<<< : \(t.outs)")
t.fold(c: uno)
//f.fold(c: dos)
print("DISCARD : \(t.discards)")
var f = Deck(sorted: true)
print(">>>>>SORTED TRUE<<<<< : \(f)")
//52 print de la methode draw
for i in 0..<52 {
    print(f.draw()!)
}
let dos = Card(Color: Color.spades, Value: Value.jack)
print(">>>>>>>OUTS<<<<<<< : \(t.outs)")
f.fold(c: dos)
print("DISCARD : \(f.discards)")
