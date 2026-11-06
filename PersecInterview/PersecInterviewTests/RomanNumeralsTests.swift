//
//  RomanNumeralsTests.swift
//  PersecInterviewTests
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import XCTest
@testable import PersecInterview

final class RomanNumeralsTests: XCTestCase {
    var sut: RomanNumerals!

    override func setUpWithError() throws {
        sut = RomanNumerals()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    // MARK: - Int To Roman

    func testIntToRomanCase1() throws {
        let input = 1989
        let result = sut.intToRoman(input)
        let expectedResult = "MCMLXXXIX"
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testIntToRomanCase2() throws {
        let input = 2000
        let result = sut.intToRoman(input)
        let expectedResult = "MM"
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testIntToRomanCase3() throws {
        let input = 68
        let result = sut.intToRoman(input)
        let expectedResult = "LXVIII"
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testIntToRomanCase4() throws {
        let input = 109
        let result = sut.intToRoman(input)
        let expectedResult = "CIX"
        
        XCTAssertEqual(result, expectedResult)
    }
    
    // MARK: - Roman To Int
    
    func testRomanToIntCase1() {
        let input = "MCMLXXXIX"
        let result = sut.romanToInt(input)
        let expectedResult = 1989
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testRomanToIntCase2() {
        let input = "MM"
        let result = sut.romanToInt(input)
        let expectedResult = 2000
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testRomanToIntCase3() {
        let input = "LXVIII"
        let result = sut.romanToInt(input)
        let expectedResult = 68
        
        XCTAssertEqual(result, expectedResult)
    }
}
