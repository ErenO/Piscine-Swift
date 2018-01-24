//
//  Card.swift
//
//
//  Created by Eren Ozdek on 12/06/2017.
//
//

import Foundation

class Card: NSObject {
    var col: Color
    var val: Value

    override var description: String {
        return ("\(self.col) of \(self.val)")
    }

    init(Color color: Color, Value value: Value)
    {
        self.col = color
        self.val = value
    }

    override func isEqual(_ object: Any?) -> Bool {
        if let card = object as? Card {
            return (card.col == self.col && card.val == self.val)
        } else {
            return false
        }
    }
}

func ==(firstC: Card, secondC: Card) -> Bool
{
    return (firstC.val == secondC.val && firstC.col == secondC.col)
}
