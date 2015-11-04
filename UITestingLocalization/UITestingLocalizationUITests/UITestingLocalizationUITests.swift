//
//  UITestingLocalizationUITests.swift
//  UITestingLocalizationUITests
//
//  Created by Dongyuan Liu on 2015-11-04.
//  Copyright © 2015 Ela Workshop. All rights reserved.
//

import XCTest

class UITestingLocalizationUITests: XCTestCase {
        
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
    
    func testLocalizedString() {
        print(NSLocale.preferredLanguages())
        XCTAssertEqual(NSLocalizedString("test", comment: ""), "测试")
    }
    
    func testLocalizedStringInBundle() {
        print(NSLocale.preferredLanguages())
        XCTAssertEqual(NSLocalizedString("test", bundle: NSBundle(forClass: UITestingLocalizationUITests.self), comment: ""), "测试")
    }
    
    func testLocalizedStringInBaseLanguage() {
        // We are currently running in zh-Hans, so it shouldn't be equal to the localization in Base language
        XCTAssertNotEqual(NSLocalizedString("test", bundle: NSBundle(forClass: UITestingLocalizationUITests.self), comment: ""), "test in Base language")
    }
    
}
