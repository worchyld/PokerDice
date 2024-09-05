//
//  PokerDice.swift
//  PokerDice
//
//  Created by Amarjit on 04/09/2024.
//

import Foundation
import GameplayKit


enum PokerHandRank: Int, CaseIterable {
    case fiveOfAKind = 7
    case fourOfAKind = 6
    case fullHouse = 5
    case straight = 4
    case threeOfAKind = 3
    case twoPair = 2
    case onePair = 1
    case highCard = 0
}

func evaluatePokerHand(_ hand: [PokerDice]) -> PokerHandRank {
    guard hand.count == 5 else {
        fatalError("A poker hand must contain exactly 5 dice")
    }
    
    let diceCounts = Dictionary(hand.map { ($0, 1) }, uniquingKeysWith: +)
    let sortedCounts = diceCounts.values.sorted(by: >)
    
    // Check for Five of a Kind
    if sortedCounts[0] == 5 {
        return .fiveOfAKind
    }
    
    // Check for Four of a Kind
    if sortedCounts[0] == 4 {
        return .fourOfAKind
    }
    
    // Check for Full House
    if sortedCounts[0] == 3 && sortedCounts[1] == 2 {
        return .fullHouse
    }
    
    // Check for Straight
    let sortedHand = hand.sorted { $0.rawValue < $1.rawValue }
    if Set(sortedHand) == Set(PokerDice.allCases.prefix(5)) || 
       Set(sortedHand) == Set(PokerDice.allCases.suffix(5)) {
        return .straight
    }
    
    // Check for Three of a Kind
    if sortedCounts[0] == 3 {
        return .threeOfAKind
    }
    
    // Check for Two Pair
    if sortedCounts[0] == 2 && sortedCounts[1] == 2 {
        return .twoPair
    }
    
    // Check for One Pair
    if sortedCounts[0] == 2 {
        return .onePair
    }
    
    // If none of the above, it's a High Card
    return .highCard
}



