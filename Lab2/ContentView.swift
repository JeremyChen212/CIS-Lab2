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
    
    private var columns = [GridItem(.adaptive(minimum: 100), spacing: 0)]
    private var emojis = ["🌮", "🌯", "🫔", "🥗", "🥘", "🫕", "🍜", "🍝", "🍲", "🍣", "🍱", "🍙"]
    
    var body: some View {
        ScrollView {
            Text("The F🍩🍩D Game")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Have fun!")
                .font(.headline)
                .padding([.bottom], 20)
            LazyVGrid(columns: columns) {
                // Generate a collection with columns no smaller than 100
                ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                    EmojiCard(emoji: emoji)
                }
            }
        }
        .padding(30)
    }
}

struct EmojiCard: View {
    var emoji: String
    
    var body: some View {
        ZStack {
            Text(emoji)
                .font(.largeTitle)
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 3)
                .foregroundColor(.teal)
        }
        .padding(10)
        .scaledToFill()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
