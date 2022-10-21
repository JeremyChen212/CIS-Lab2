//
//  ShuffleButton.swift
//  Lab2
//
//  Created by David on 10/21/22.
//

import SwiftUI

struct ShuffleButton: View {
    @Binding var emojis: [Emoji]
    
    var body: some View {
        Button(action: {
            emojis = emojis.shuffled()
        }) {
            Image(systemName: "shuffle")
        }
    }
}

struct ShuffleButton_Previews: PreviewProvider {
    static var previews: some View {
        ShuffleButton(emojis: .constant(Emoji.sampleData))
    }
}
