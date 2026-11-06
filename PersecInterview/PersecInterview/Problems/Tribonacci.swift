//
//  Tribonacci.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import Foundation

struct Tribonacci {
    func tribonacci(_ initialValues: [Int], _ count: Int) -> [Int] {
        guard count > 0, initialValues.count == 3 else {
            return []
        }
        
        var result = initialValues
        
        while result.count < count {
            let next = result.suffix(3).reduce(0, +)
            result.append(next)
        }
        
        return Array(result.prefix(count))
    }
}
