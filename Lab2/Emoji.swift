//
//  Emoji.swift
//  Lab2
//
//  Created by David on 10/21/22.
//

import Foundation

struct Emoji: Codable, Identifiable {
    let id: UUID
    let content: String
    
    init(id: UUID = UUID(), _ content: String) {
        self.id = id
        self.content = content
    }
    
    static let sampleData: [Emoji] = [Emoji("🌮"), Emoji("🌯"), Emoji("🫔"), Emoji("🥗"), Emoji("🥘"), Emoji("🫕"), Emoji("🍜"), Emoji("🍝"), Emoji("🍲"), Emoji("🍣"), Emoji("🍱"), Emoji("🍙")]
}
