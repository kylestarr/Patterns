//
//  Symbol.swift
//  Patterns
//
//  Created by Kyle Starr on 5/25/22.
//

import SwiftUI

enum Symbol: String, View, CaseIterable {
    case leaf = "leaf.fill"
    case cloud = "cloud.fill"
    case sun = "sun.max.fill"
    case ladybug = "ladybug.fill"
    case heart = "heart.fill"
    
    var foregroundColor: Color? {
        switch self {
        default:
            return nil
        }
    }
    
    var backgroundColor: Color? {
        switch self {
        case .cloud:
            return .blue.opacity(0.5)
        case .sun:
            return .blue.opacity(0.7)
        case .heart:
            return .pink.opacity(0.1)
        default:
            return .clear
        }
    }
    
    var body: some View {
        Image(systemName: self.rawValue)
            .font(.title)
            .foregroundStyle(.shadow(.drop(radius: 1, y: 1.5)))
            .foregroundColor(self.foregroundColor)
            .imageScale(.large)
            .symbolRenderingMode(.multicolor)
            .shadow(radius: 1, y: 1.5)
    }
    
    static var random: Symbol {
        Symbol.allCases.randomElement()!
    }
}
