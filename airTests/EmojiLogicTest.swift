//
//  EmojiLogicTest.swift
//  airTests
//
//  Created by Reena Koudi on 04/05/2018.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import XCTest

class EmojiLogicTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func getEmoji() {
        
    }
    
    func testgetIndexOfConcern() {
        let result = getIndexOfConcern(findX: 5, findY: 10, rowWidth: 20)
        XCTAssertEqual(result, 205)
    }
    
}
