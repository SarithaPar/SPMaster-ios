//
//  TabbarProjectUITests.swift
//  TabbarProjectUITests
//
//  Created by Parsoya, Saritha(AWF) on 1/29/19.
//  Copyright © 2019 Parsoya, Saritha(AWF). All rights reserved.
//

import XCTest

class TabbarProjectUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCTAssertTrue(app.staticTexts["FirstViewText"].exists, "First view Text is missing")
        app.tabBars.buttons["Second"].tap()
        XCTAssertTrue(app.staticTexts["SecondViewText"].exists, "Second view Text is missing")
        app.tabBars.buttons["First"].tap()
        XCTAssertTrue(app.staticTexts["FirstViewText"].exists, "First view Text is missing")
    }

}
