//
//  PokerDice.swift
//  PokerDice
//
//  Created by Amarjit on 04/09/2024.
//

import Foundation
import GameplayKit

enum PokerDice: String, CaseIterable {
    case nine = "9"
    case ten = "10"
    case jack = "J"
    case queen = "Q"
    case king = "K"
    case ace = "A"
}

enum PokerHandRank: Int {
    case fiveOfAKind = 7
    case fourOfAKind = 6
    case fullHouse = 5
    case straight = 4
    case threeOfAKind = 3
    case twoPair = 2
    case onePair = 1
    case highCard = 0
}

