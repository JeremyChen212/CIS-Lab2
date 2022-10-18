/*:
 Lab 2
 
 Group 9
 
 Jeremy Chen, David Solis
 
 10/18/22
*/
//
//  ContentView.swift
//  Lab2
//
//  Created by Jeremy Chen on 10/17/22.
//

import SwiftUI

struct ContentView: View {
    
    private var columns = [GridItem(.adaptive(minimum: 150), spacing: 0)]
    private var emojis = ["🌮", "🌯", "🫔", "🥗", "🥘", "🫕", "🍜", "🍝", "🍲", "🍣", "🍱", "🍙"]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                    ZStack {
                        Text(emoji)
                            .font(.largeTitle)
                    }
                    .padding(20)
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
