//
//  ValidParenthesesTests.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import XCTest
@testable import PersecInterview

final class ValidParenthesesTests: XCTestCase {
    var sut: ValidParentheses!

    override func setUpWithError() throws {
        sut = ValidParentheses()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testBracketsBalanced() throws {
        XCTAssertTrue(sut.isValidParentheses("()"))
        
        XCTAssertTrue(sut.isValidParentheses("([])"))
        
        XCTAssertTrue(sut.isValidParentheses("([{}])"))
    }
    
    func testBracketsAreNotBalanced() throws {
        XCTAssertFalse(sut.isValidParentheses("([]]"))
        
        XCTAssertFalse(sut.isValidParentheses("([{}]]"))
        
        XCTAssertFalse(sut.isValidParentheses("([)]"))
        
        XCTAssertFalse(sut.isValidParentheses("(]"))
    }
}
