//
//  PageSelection.swift
//  ThreadsClone
//
//  Created by jinam on 6/17/25.
//

import Foundation

enum PageSelection: CaseIterable {
    case forYou
    case following
    
    static let pageSelectionID = "PageSelectionID"
    
    var title: String {
        switch self {
        case .forYou:
            return "For You"
        case .following:
            return "Following"
        }
    }
}
