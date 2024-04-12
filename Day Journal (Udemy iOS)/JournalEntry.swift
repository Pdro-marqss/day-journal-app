//
//  JournalEntry.swift
//  Day Journal (Udemy iOS)
//
//  Created by Pedro Marques on 11/04/24.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

//let journalEntries: [JournalEntry] = [
//    JournalEntry(title: "A great Golf Day", text: "I found a nice pot of goldm i'm rich i tell ya!!!", rating: 5, date: Date()),
//    JournalEntry(title: "I made an App", text: "I build an iOS app, whatching a Udemy Course", rating: 3, date: Date.now.addingTimeInterval(-24 * 60 * 60)),
//    JournalEntry(title: "My game is on Steam", text: "I put my game on Steam and sell 10 copies until now", rating: 4, date: Date.now.addingTimeInterval(-7 * 24 * 60 * 60)),
//]

