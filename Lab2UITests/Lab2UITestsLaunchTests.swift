/*:
 Lab 2
 
 Group 9
 
 Jeremy Chen, David Solis
 
 10/18/22
*/
//
//  Lab2UITestsLaunchTests.swift
//  Lab2UITests
//
//  Created by Jeremy Chen on 10/17/22.
//

import XCTest

final class Lab2UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
