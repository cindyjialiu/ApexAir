//
//  EmojiLogicTest.swift
//  airTests
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import XCTest
@testable import air

class EmojiLogicTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetEmojiForRangeOne() {
        let result = getEmoji(value: 50.00)
        XCTAssertEqual(result, "😀 Very Good")
    }
    
    func testGetEmojiForRangeTwo() {
        let result = getEmoji(value: 55.00)
        XCTAssertEqual(result, "😎 Good")
    }
    
    func testGetEmojiForRangeThree() {
        let result = getEmoji(value: 61.00)
        XCTAssertEqual(result, "🙂 Moderate")
    }
    
    func testGetEmojiForRangeFour() {
        let result = getEmoji(value: 70.00)
        XCTAssertEqual(result, "😷 Poor")
    }
    
    func testGetEmojiForRangeFive() {
        let result = getEmoji(value: 80.00)
        XCTAssertEqual(result, "🤮 Very Poor")
    }
}
