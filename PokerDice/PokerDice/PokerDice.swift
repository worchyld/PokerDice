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

func evaluateHand(_ dice: [PokerDice]) -> PokerHandRank {
    // Count occurrences of each face
    let counts: [String: Int] = [:]

    // Sort counts by frequency
    let sortedCounts = counts.values.sorted(by: >)

    switch sortedCounts {
    case [5]:
        return .fiveOfAKind
    case [4, 1]:
        return .fourOfAKind
    case [3, 2]:
        return .fullHouse
    case [3, 1, 1]:
        return .threeOfAKind
    case [2, 2, 1]:
        return .twoPair
    case [2, 1, 1, 1]:
        return .onePair
    default:
        // Check for a straight (sequential values)
        let sortedValues = dice.map { $0.rawValue }.sorted()
        let isStraight = sortedValues == ["9", "10", "J", "Q", "K"] || sortedValues == ["10", "J", "Q", "K", "A"]

        return isStraight ? .straight : .highCard
    }
}

//
//// Example Usage
//let rolledDice = rollDice()
//let handRank = evaluateHand(rolledDice)
//print("You rolled: \(rolledDice.map { $0.rawValue }.joined(separator: " "))")
//print("Hand Rank: \(handRank)")
