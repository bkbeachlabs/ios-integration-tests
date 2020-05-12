//
//  IntegrationTestAppUITests.swift
//  IntegrationTestAppUITests
//
//  Created by Andrew King on 2020-03-10.
//  Copyright © 2020 BKBeachLabs. All rights reserved.
//

import XCTest

class IntegrationTestAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func runTest(_ id: TestId) {
        let app = XCUIApplication()
        let textField = app.textFields.element
        
        textField.tap()
        textField.typeText(id.rawValue)
        
        app.buttons["Run"].tap()
    }

    func testDoesSomethingRight() {
        runTest(.doesSomethingRight)
    }
    
    func testDoesAnotherThing() {
        runTest(.doesAnotherThing)
    }
}
