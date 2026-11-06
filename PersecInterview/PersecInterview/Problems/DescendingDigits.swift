//
//  DescendingDigits.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import Foundation

struct DescendingDigits {
    func descendingDigitSort(_ input: Int) -> Int {
        guard input > 0 else { return 0 }
        
        let number = String(input)
        let sorted = number.sorted(by: >)
        
        return Int(String(sorted)) ?? 0
    }
}
