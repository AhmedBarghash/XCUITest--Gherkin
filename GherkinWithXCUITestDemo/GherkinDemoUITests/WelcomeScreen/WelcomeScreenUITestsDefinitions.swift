//
//  GherkinDemoUITests.swift
//  GherkinDemoUITests
//
//  Created by AHMED on 5/7/19.
//  Copyright © 2019 GreedyGeek. All rights reserved.
//

import XCTest

class WelcomeScreenUITestsDefinitions: XCUITestBase {

    func testWelcomeMessage() {
        XCTContext.runActivity(named: "Given application is launched"){ _ in
            app.launch()
        }
        XCTContext.runActivity(named: "When user enter his name"){ _ in
            let nameTextField = app.textFields["Enter Name"]
            nameTextField.tap()
            nameTextField.typeText("Ali")
        }
        XCTContext.runActivity(named: "And user tap on Enter button "){ _ in
            app.buttons["Enter"].tap()
        }
        
        XCTContext.runActivity(named: "Then I should see Welcome message "){ _ in
            XCTAssert(app.staticTexts["Welcome"].exists)
        }

        XCTContext.runActivity(named: "And Error Message disappear if it was exist "){ _ in
            XCTAssertFalse(app.staticTexts["Name Field is Empty"].exists)
        }
    }

    func testErrorMessage(){
        XCTContext.runActivity(named: "Given application is launched"){ _ in
            app.launch()
        }
        
        XCTContext.runActivity(named: "When user tap on Enter button "){ _ in
            app.buttons["Enter"].tap()
        }
        XCTContext.runActivity(named: "Then I should see Welcome message "){ _ in
            XCTAssert(app.staticTexts["Name Field is Empty"].exists)
        }
        
        XCTContext.runActivity(named: "And Error Message disappear if it was exist "){ _ in
            XCTAssertFalse(app.staticTexts["Welcome"].exists)
        }
    }
}
