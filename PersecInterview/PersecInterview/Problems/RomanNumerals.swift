//
//  RomanNumerals.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import Foundation

struct RomanNumerals {
    func intToRoman(_ number: Int) -> String {
        let romanMap: [(symbol: String, value: Int)] = [
            ("M", 1000),
            ("CM", 900),
            ("D", 500),
            ("CD", 400),
            ("C", 100),
            ("XC", 90),
            ("L", 50),
            ("XL", 40),
            ("X", 10),
            ("IX", 9),
            ("V", 5),
            ("IV", 4),
            ("I", 1)
        ]
        
        var result = ""
        var remaining = number
        
        for (symbol, value) in romanMap {
            let count = remaining / value
            remaining = remaining % value
            result += String(repeating: symbol, count: count)
            
            if remaining == 0 {
                break
            }
        }
        
        return result
    }
    
    
    func romanToInt(_ input: String) -> Int {
        let romanMap: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        let characters = Array(input)
        
        var result = 0
        
        for i in 0..<characters.count {
            let current = romanMap[characters[i]]!
            
            if i + 1 < characters.count {
                let next = romanMap[characters[i + 1]]!
                
                if current < next {
                    result -= current
                } else {
                    result += current
                }
            } else {
                result += current
            }
        }
        
        return result
    }
}
