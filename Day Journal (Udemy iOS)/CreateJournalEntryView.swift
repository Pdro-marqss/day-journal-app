//
//  CreateJournalEntryView.swift
//  Day Journal (Udemy iOS)
//
//  Created by Pedro Marques on 12/04/24.
//

import SwiftUI

struct CreateJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var title: String = ""
    @State var text: String = "Today was..."
    @State var rating: Double = 3.0
    @State var date: Date = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                DatePicker("Date", selection: $date, displayedComponents: .date)
                
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5, step: 1)
                
                TextEditor(text: $text)
                    .foregroundStyle(.secondary)
            }
            .navigationTitle("New Journal Entry")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        let newJournalEntry = JournalEntry(title: title, text: text, rating: rating, date: date)
                        modelContext.insert(newJournalEntry)
                        
                        dismiss()
                    }
                }
                
            }
        }
    }
}

#Preview {
    CreateJournalEntryView()
}
