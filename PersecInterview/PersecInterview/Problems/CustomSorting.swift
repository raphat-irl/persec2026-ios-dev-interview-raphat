//
//  CustomSorting.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import Foundation

struct CustomSorting {
    func sortedByPrefixAndNumber(_ input: [String])  -> [String] {
        input
            .map { $0.filter { !$0.isWhitespace } }
            .map { item in
                let (prefix, number) = splitPrefixNumber(from: item)
                
                return (value: item, prefix: prefix, number: number)
            }
            .sorted {
                if $0.prefix != $1.prefix {
                    return $0.prefix < $1.prefix
                }
                
                return $0.number < $1.number
            }
            .map(\.value)
    }
    
    private func splitPrefixNumber(from text: String) -> (String, Int) {
        let letters = text.prefix { $0.isLetter }
        let rest = text.drop { $0.isLetter }
        let digits = rest.prefix { $0.isNumber }
        let number = Int(digits) ?? Int.max
        
        return (String(letters), number)
    }
}
