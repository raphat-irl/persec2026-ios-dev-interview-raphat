//
//  TribonacciTests.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import XCTest
@testable import PersecInterview

final class TribonacciTests: XCTestCase {
    var sut: Tribonacci!
    
    override func setUpWithError() throws {
        sut = Tribonacci()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testTribonacci() {
        let input = [1, 3, 5]
        let count = 5
        let expectedResult = [1, 3, 5, 9, 17]
        let result = sut.tribonacci(input, count)
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTribonacciWithSameInitialValues() {
        let input = [2, 2, 2]
        let count = 3
        let expectedResult = [2, 2, 2]
        let result = sut.tribonacci(input, count)
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTribonacciWithOneAdditionalValue() {
        let input = [10, 10, 10]
        let count = 4
        let expectedResult = [10, 10, 10, 30]
        let result = sut.tribonacci(input, count)
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTribonacciWithCountLessThanInitValueCount() {
        let input = [1, 3, 5]
        let count = 2
        let expectedResult = [1, 3]
        let result = sut.tribonacci(input, count)
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTribonacciWithInvalidInitValue() {
        let input = [1, 2]
        let count = 5
        let expectedResult: [Int] = []
        let result = sut.tribonacci(input, count)
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testTribonacciWithZeroCount() {
        let input = [1, 3, 5]
        let count = 0
        let expectedResult: [Int] = []
        let result = sut.tribonacci(input, count)
        
        XCTAssertEqual(result, expectedResult)
    }
}
