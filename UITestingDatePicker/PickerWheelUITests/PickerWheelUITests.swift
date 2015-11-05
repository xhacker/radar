//
//  PickerWheelUITests.swift
//  PickerWheelUITests
//
//  Created by Dongyuan Liu on 2015-11-04.
//  Copyright © 2015 Ela Workshop. All rights reserved.
//

import XCTest

class PickerWheelUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        let app = XCUIApplication()
        app.launchArguments = ["-AppleLanguages", "(zh-Hans)", "-AppleLocale", "zh_CN", "-ui_testing"]
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSelectDate() {
        let app = XCUIApplication()
        
        app.pickerWheels.elementBoundByIndex(0).adjustToPickerWheelValue("11月1日")
        app.pickerWheels.elementBoundByIndex(0).adjustToPickerWheelValue("11月2日")
        app.pickerWheels.elementBoundByIndex(0).adjustToPickerWheelValue("11月3日")
        
        // These lines work in English environment
        // app.pickerWheels.elementBoundByIndex(0).adjustToPickerWheelValue("Nov 1")
        // app.pickerWheels.elementBoundByIndex(0).adjustToPickerWheelValue("Nov 2")
        // app.pickerWheels.elementBoundByIndex(0).adjustToPickerWheelValue("Nov 3")
    }
    
}
