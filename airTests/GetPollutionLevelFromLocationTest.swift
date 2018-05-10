//
//  GetPollutionLevelFromLocationTest.swift
//  airTests
//
//  Created by Miss America on 5/10/18.
//  Copyright © 2018 Jia Liu. All rights reserved.
//

import XCTest
@testable import air 

class GetPollutionLevelFromLocationTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetConcen() {
        let result = getConcen(lon: -0.08478, lat: 51.51228)
        XCTAssertEqual(result, 82.71194)
    }
    
}
