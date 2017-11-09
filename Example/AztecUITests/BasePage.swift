//
//  TestHelper.swift
//  AztecUITests
//
//  Created by brbrr on 11/9/17.
//  Copyright © 2017 Automattic Inc. All rights reserved.
//

import XCTest

class BasePage {
    
    let app = XCUIApplication()
    
    var Trait: XCUIElement! {
        return nil
    }
    
    var pageName: String! {
        return String(describing: self).components(separatedBy: ".")[1]
    }
    
    @discardableResult
    init() {
        waitForPage()
    }
    
    func waitForPage() {
        if Trait == nil {
            fatalError("Trait not set for " + pageName)
        }
        
        XCTAssertTrue(Trait.waitForExistence(timeout: 30))
    }
}
