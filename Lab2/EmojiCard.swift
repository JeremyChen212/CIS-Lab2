//
//  EmojiCard.swift
//  Lab2
//
//  Created by David on 10/21/22.
//

import SwiftUI

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

struct EmojiCard_Previews: PreviewProvider {
    static var previews: some View {
        EmojiCard(Emoji.sampleData.first!.content)
    }
}
