//
//  Deck.swift
//
//
//  Created by Eren Ozdek on 12/06/2017.
//
//

import Foundation

class Deck: NSObject {
    static let allSpades: [Card] = Value.allValues.map({
        Card(Color: Color.spades, Value: $0)
    })
    static let allDiamonds: [Card] = Value.allValues.map({
        Card(Color: Color.diamonds, Value: $0)
    })
    static let allHearts: [Card] = Value.allValues.map({
        Card(Color: Color.hearts, Value: $0)
    })
    static let allClubs: [Card] = Value.allValues.map({
        Card(Color: Color.clubs, Value: $0)
    })
    static let allCard: [Card] = allSpades + allHearts + allDiamonds + allClubs
    var cards : [Card] = allCard
    var discards : [Card] = []
    var outs : [Card] = []

    init(sorted: Bool)
    {
        if sorted == false {
            self.cards = cards.mix()
        }
    }

    override var description: String {
        return "\(self.cards)"
    }

    func draw() -> Card? {
        var fc: Card?
        if (self.cards.isEmpty == false)
        {
            fc =  self.cards.remove(at: 0)
            self.outs.append(fc!)
        }
        return fc
    }

    func fold(c: Card) {
        if (self.outs.contains(c))
        {
            self.discards.append(c)
            self.outs.remove(at: self.outs.index(of: c)!)
        }
    }
}

extension Array {
    func mix() -> [Element] {
        var elem = self
        for i in indices {
            let random = Int(arc4random_uniform(UInt32(elem.count)))
            if i != random {
                let tmp = elem[i]
                elem[i] = elem[random]
                elem[random] = tmp
            }
        }
        return elem
    }
}
