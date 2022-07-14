//
//  Option.swift
//  What are the Odds? dds?
//
//  Created by DPI Student 28 on 7/12/22.
//

import Foundation

struct Option {
    var name: String
    
    
}

private enum Test_Option {
    case oddsOrEvens
    case oneToTen
    case aThroughZ
}

private func foo() {
    let option = Test_Option.oneToTen
    
    if option == .oddsOrEvens {
        
    } else if option == .oneToTen {
        
    } else if option == .aThroughZ {
        
    }
    
    switch option {
    case .oddsOrEvens:
        print("odds or evens")
    case .oneToTen:
        print("one to ten")
    case .aThroughZ:
        print("a through z")
    }
}
