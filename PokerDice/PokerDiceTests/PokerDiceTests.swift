//
//  PokerDiceTests.swift
//  PokerDiceTests
//
//  Created by Amarjit on 04/09/2024.
//

import XCTest
@testable import PokerDice

final class PokerDiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPokerDice() throws {
        // Test Case: Five of a Kind
        let fiveOfAKind = [PokerDice.ace, PokerDice.ace, PokerDice.ace, PokerDice.ace, PokerDice.ace]
        XCTAssertEqual(evaluateHand(fiveOfAKind), .fiveOfAKind)

        // Test Case: Four of a Kind
        let fourOfAKind = [PokerDice.king, PokerDice.king, PokerDice.king, PokerDice.king, PokerDice.queen]
        XCTAssertEqual(evaluateHand(fourOfAKind), .fourOfAKind)

        // Test Case: Full House
        let fullHouse = [PokerDice.queen, PokerDice.queen, PokerDice.queen, PokerDice.jack, PokerDice.jack]
        XCTAssertEqual(evaluateHand(fullHouse), .fullHouse)

        // Test Case: Straight (9 to King)
        let straight = [PokerDice.nine, PokerDice.ten, PokerDice.jack, PokerDice.queen, PokerDice.king]
        XCTAssertEqual(evaluateHand(straight), .straight)
    
        // Test Case: Straight (10 to Ace)
        let straightAce = [PokerDice.ten, PokerDice.jack, PokerDice.queen, PokerDice.king, PokerDice.ace]
        XCTAssertEqual(evaluateHand(straightAce), .straight)

        // Test Case: Three of a Kind
        let threeOfAKind = [PokerDice.jack, PokerDice.jack, PokerDice.jack, PokerDice.nine, PokerDice.queen]
        XCTAssertEqual(evaluateHand(threeOfAKind), .threeOfAKind)

        // Test Case: Two Pair
        let twoPair = [PokerDice.king, PokerDice.king, PokerDice.ten, PokerDice.ten, PokerDice.ace]
        XCTAssertEqual(evaluateHand(twoPair), .twoPair)

        // Test Case: One Pair
        let onePair = [PokerDice.queen, PokerDice.queen, PokerDice.king, PokerDice.jack, PokerDice.ace]
        XCTAssertEqual(evaluateHand(onePair), .onePair)

        // Test Case: High Card
        let highCard = [PokerDice.ace, PokerDice.king, PokerDice.queen, PokerDice.jack, PokerDice.nine]
        XCTAssertEqual(evaluateHand(highCard), .highCard)
    }
}
