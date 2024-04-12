//
//  JournalEntryRowView.swift
//  Day Journal (Udemy iOS)
//
//  Created by Pedro Marques on 11/04/24.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            
            HStack {
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
            }
            .font(.caption)
        }
    }
}

#Preview {
    List{
        JournalEntryRowView(rowJournalEntry: JournalEntry(title: "My game is on Steam", text: "I put my game on Steam and sell 10 copies until now", rating: 4, date: Date()))
    }
}
