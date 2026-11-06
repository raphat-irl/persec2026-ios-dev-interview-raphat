//
//  ValidParentheses.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import Foundation

struct ValidParentheses {
    func isValidParentheses(_ parentheses: String) -> Bool {
        var stack = [Character]()
        
        for bracket in parentheses {
            switch bracket {
            case "(", "{", "[":
                stack.append(bracket)
            case ")":
                guard stack.popLast() == "(" else { return false }
            case "}":
                guard stack.popLast() == "{" else { return false }
            case "]":
                guard stack.popLast() == "[" else { return false }
            default:
                continue
            }
        }
        
        return stack.isEmpty
    }
}

