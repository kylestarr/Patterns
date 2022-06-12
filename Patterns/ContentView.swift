//
//  ContentView.swift
//  Patterns
//
//  Created by Kyle Starr on 5/19/22.
//

import SwiftUI

struct ContentView: View {
    @State var buttonPressed: Bool = false
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    Text("Sophia's Playhouse")
                        .font(.title)
                        .padding()
                    Spacer()
                    VStack {
                        Spacer()
                        NavigationLink("High Contrast Shapes", destination: HighContrastShapes())
                            .padding()
                            .background(.white)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
                            .cornerRadius(5.0)
                        Spacer()
                        NavigationLink("Symbol Patterns", destination: SymbolPatterns())
                            .padding()
                            .background(.white)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 5)
                            .cornerRadius(5.0)
                        Spacer()
                    }
                    .shadow(radius: 3, x: 5, y: 5)
                    Spacer()
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
