//
//  XCUITestBase.swift
//  GherkinDemoUITests
//
//  Created by AHMED on 5/8/19.
//  Copyright © 2019 GreedyGeek. All rights reserved.
//

import XCTest

class XCUITestBase: XCTestCase {
    var app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    override func tearDown() {
        app.terminate()
        super.tearDown()
    }
}
