//
//  DescendingDigitsTests.swift
//  PersecInterviewTests
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import XCTest
@testable import PersecInterview

final class DescendingDigitsTests: XCTestCase {
    var sut: DescendingDigits!

    override func setUpWithError() throws {
        sut = DescendingDigits()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testDescendingDigitSortCase1() {
        let input = 3008
        let result = sut.descendingDigitSort(input)
        let expectedResult = 8300
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testDescendingDigitSortCase2() {
        let input = 1989
        let result = sut.descendingDigitSort(input)
        let expectedResult = 9981
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testDescendingDigitSortCase3() {
        let input = 2679
        let result = sut.descendingDigitSort(input)
        let expectedResult = 9762
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testDescendingDigitSortCase4() {
        let input = 9163
        let result = sut.descendingDigitSort(input)
        let expectedResult = 9631
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testDescendingDigitSortWithRepeatedDigits() {
        let input = 1111
        let result = sut.descendingDigitSort(input)
        let expectedResult = 1111
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testDescendingDigitSortWithSingleDigit() {
        let input = 7
        let result = sut.descendingDigitSort(input)
        let expectedResult = 7
        
        XCTAssertEqual(result, expectedResult)
    }
}
