//
//  TestCanDoAnotherThing.swift
//  IntegrationTestApp
//
//  Created by Andrew King on 2020-05-12.
//  Copyright © 2020 BKBeachLabs. All rights reserved.
//

import XCTest
import MyFramework

class TestCanDoAnotherThing: XCTestCase {
    
    var myClass: MyClass!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        myClass = MyClass()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        myClass = nil
    }

    func testReturnsSumIfPositive() throws {
        let result = myClass.positiveSumOf(a: 3, b: 4)
        XCTAssertNotNil(result)
        XCTAssertEqual(result, 7)
    }

    func testReturnsNilIfNegative() throws {
        XCTAssertNil(myClass.positiveSumOf(a: -2, b: -4))
    }
    
    func testReturnsNilIfZero() {
        XCTAssertNil(myClass.positiveSumOf(a: -4, b: 4))
    }

}
