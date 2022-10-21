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
    
    private var columns = [GridItem(.flexible(minimum: 150)), GridItem(.flexible(minimum: 150))]
    @State var emojis = Emoji.sampleData
    
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
                ForEach(emojis) { emoji in
                    EmojiCard(emoji.content)
                }
            }
        }
        .padding(30)
        .toolbar {
            ToolbarItem {
                Button(action: {
                    cards = cards.shuffled()
                }) {
                    Image(systemName: "shuffle.circle.fill")
                }
            }
        }
    }
}

struct EmojiCard: View {
    var content: String
    
    init(_ content: String) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            Text(content)
                .font(.largeTitle)
            // Create a rounded border around the emoji
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
        NavigationView {
            ContentView()
        }
    }
}
