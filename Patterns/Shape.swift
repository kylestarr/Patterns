//
//  Shape.swift
//  Patterns
//
//  Created by Kyle Starr on 6/8/22.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        ZStack {
            Image(systemName: "ladybug.fill")
                .font(.system(size: 200))
                .symbolRenderingMode(.multicolor)
        }
        .shadow(radius: 1, y: 1.5)
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
            .previewLayout(.sizeThatFits)
    }
}
