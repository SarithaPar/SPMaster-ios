//
//  TabbarProjectTests.swift
//  TabbarProjectTests
//
//  Created by Parsoya, Saritha(AWF) on 1/29/19.
//  Copyright © 2019 Parsoya, Saritha(AWF). All rights reserved.
//

import XCTest
@testable import TabbarProject

class TabbarProjectTests: XCTestCase {
    
    let tabbarProject = TabbarProject()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testExample() {
        givenILaunchApp()
        thenIamOnFirstView(text: "First View")
    }
    
    private func givenILaunchApp () {
        // do nothing
    }
    
    private func thenIamOnFirstView(text: String) {
        let expected = true
        let result = tabbarProject.labelVisible()
        XCTAssert(result == expected)
    }
}
