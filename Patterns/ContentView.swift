//
//  ContentView.swift
//  Patterns
//
//  Created by Kyle Starr on 5/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var randomSymbol = Symbol.random
    
    var rows = 10
    var cols = 8

    var body: some View {
        GeometryReader { gr in
            let width = gr.size.width / CGFloat(cols)
            let height = gr.size.height / CGFloat(rows)
            
            ZStack {
                randomSymbol.backgroundColor
                VStack(spacing:0) {
                    ForEach(0..<rows, id: \.self) { i in
                        let rowCols = (i%2==0) ? cols : cols - 1
                        HStack(spacing:0) {
                            Group {
                                ForEach(0..<rowCols, id: \.self) { _ in
                                    randomSymbol
                                        .frame(width: width, height: height)
                                }
                            }
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .onTapGesture {
                let currentSymbol = randomSymbol.rawValue
                while randomSymbol.rawValue == currentSymbol {
                    randomSymbol = Symbol.random
                }
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
