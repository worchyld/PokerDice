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

    func testFiveOfAKind() {
        let hand = PokerDiceHand(dice: [1, 1, 1, 1, 1])
        XCTAssertEqual(hand.evaluateHand(), .fiveOfAKind)
    }

    func testFourOfAKind() {
        let hand = PokerDiceHand(dice: [2, 2, 2, 2, 5])
        XCTAssertEqual(hand.evaluateHand(), .fourOfAKind)
    }

    func testFullHouse() {
        let hand = PokerDiceHand(dice: [3, 3, 3, 4, 4])
        XCTAssertEqual(hand.evaluateHand(), .fullHouse)
    }

    func testStraight() {
        let hand = PokerDiceHand(dice: [1, 2, 3, 4, 5])
        XCTAssertEqual(hand.evaluateHand(), .straight)
    }

    func testThreeOfAKind() {
        let hand = PokerDiceHand(dice: [6, 6, 6, 2, 3])
        XCTAssertEqual(hand.evaluateHand(), .threeOfAKind)
    }

    func testTwoPair() {
        let hand = PokerDiceHand(dice: [1, 1, 4, 4, 5])
        XCTAssertEqual(hand.evaluateHand(), .twoPair)
    }

    func testOnePair() {
        let hand = PokerDiceHand(dice: [2, 2, 3, 4, 6])
        XCTAssertEqual(hand.evaluateHand(), .onePair)
    }

    func testNoPair() {
        let hand = PokerDiceHand(dice: [1, 3, 4, 5, 6])
        XCTAssertEqual(hand.evaluateHand(), .noPair)
    }

}
