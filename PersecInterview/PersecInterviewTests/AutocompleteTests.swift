//
//  AutocompleteTests.swift
//  PersecInterviewTests
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import XCTest
@testable import PersecInterview


final class AutocompleteTests: XCTestCase {
    var sut: AutoComplete!

    override func setUpWithError() throws {
        sut = AutoComplete()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testAutoCompletePrioPrefix() throws {
        let search = "th"
        let items = ["Mother", "Think", "Worthy", "Beneath", "Apple"]
        let expectedResult = ["Think", "Mother", "Worthy", "Beneath"]
        
        let result = sut.autocomplete(
            search: search,
            items: items,
            maxResult: 10
        )
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testAutocompleteLimitResults() {
        let search = "th"
        let items = ["Think", "Mother", "Worthy", "Beneath"]
        let expectedResult = ["Think", "Mother"]
        
        let result = sut.autocomplete(
            search: search,
            items: items,
            maxResult: 2
        )
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testAutocompleteIgnoreCase() {
        let search = "th"
        let items = ["THink", "moTHer", "beneATH"]
        let expectedResult = ["THink", "moTHer", "beneATH"]
        
        let result = sut.autocomplete(
            search: search,
            items: items,
            maxResult: 10
        )
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testAutocompleteReturnEmptyWhenSearchIsEmpty() {
        let search = ""
        let items = ["Think", "Mother"]
        let expectedResult: [String] = []
        
        let result = sut.autocomplete(
            search: search,
            items: items,
            maxResult: 10
        )
        
        XCTAssertEqual(result, expectedResult)
    }
    
    func testAutocompleteReturnEmptyWhenMaxResultIsZero() {
        let search = "th"
        let items = ["Think", "Mother"]
        let expectedResult: [String] = []
        
        let result = sut.autocomplete(
            search: search,
            items: items,
            maxResult: 0
        )
        
        XCTAssertEqual(result, expectedResult)
    }
}
