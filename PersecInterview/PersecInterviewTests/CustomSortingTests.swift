//
//  CustomSortingTests.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import XCTest
@testable import PersecInterview

final class CustomSortingTests: XCTestCase {
    var sut: CustomSorting!

    override func setUpWithError() throws {
        sut = CustomSorting()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testExample1() {
        let input = ["TH19", "SG20", "TH 2"]
        let result = sut.sortedByPrefixAndNumber(input)
        let expectedResult = ["SG20", "TH2", "TH19"]
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testExample2() {
        let input = ["TH10", "TH3Netflix", "TH1", "TH7"]
        let result = sut.sortedByPrefixAndNumber(input)
        let expectedResult = ["TH1", "TH3Netflix", "TH7", "TH10"]
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testEmptyArray() {
        let input = [""]
        let result = sut.sortedByPrefixAndNumber(input)
        let expectedResult = [""]
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testSingleItem() {
        let input = ["TH1"]
        let result = sut.sortedByPrefixAndNumber(input)
        let expectedResult = ["TH1"]
        
        XCTAssertEqual(result, expectedResult)
    }
}
