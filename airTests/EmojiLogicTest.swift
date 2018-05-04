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
    
    func testGetEmoji() {
        let result = getEmoji(value: 17.78)
        XCTAssertEqual(result, "😀")
    }
    
    func testGetEmojiForRangeSix() {
        let result = getEmoji(value: 22.78)
        XCTAssertEqual(result, "🤬")
    }
    
    func testGetEmojiForNotInRange() {
        let result = getEmoji(value: 25.98)
        XCTAssertEqual(result, "😈")
    }
    
}
