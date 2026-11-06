//
//  AutoComplete.swift
//  PersecInterview
//
//  Created by Raphat Aektantidamrong on 5/11/2569 BE.
//

import Foundation

struct AutoComplete {
    func autocomplete(search: String, items: [String], maxResult: Int) -> [String] {
        guard !search.isEmpty && maxResult > 0 else { return [] }
            
        let lowercasedSearch = search.lowercased()
        
        let prefixesItems = items.filter { item in
            item.lowercased().hasPrefix(lowercasedSearch)
        }
        
        let suffixItems = items.filter { item in
            item.lowercased().hasSuffix(lowercasedSearch)
            && !item.lowercased().hasPrefix(lowercasedSearch)
        }
        
        let middleItems = items.filter { item in
            item.lowercased().contains(lowercasedSearch)
            && !item.lowercased().hasPrefix(lowercasedSearch)
            && !item.lowercased().hasSuffix(lowercasedSearch)
        }
        
        let result = prefixesItems + middleItems + suffixItems
        
        return Array(result.prefix(maxResult))
    }
}

