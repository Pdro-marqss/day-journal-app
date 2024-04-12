//
//  EditJournalEntryView.swift
//  Day Journal (Udemy iOS)
//
//  Created by Pedro Marques on 12/04/24.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode: Bool = false
    
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                
                Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                
                TextEditor(text: $editingJournalEntry.text)
                    .foregroundStyle(.secondary)
            }
            .navigationTitle("Editing")
            .toolbar {
                Button("Delete") {
                    modelContext.delete(editingJournalEntry)
                    dismiss()
                }
                .foregroundStyle(.red)
                Button("Done") {
                    editMode = false
                }
                .bold()
            }
        } else {
            JournalEntryDetailView(detailJournalEntry: editingJournalEntry)
                .toolbar {
                    Button("Edit") {
                        editMode = true
                    }
                }
        }
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(editingJournalEntry: JournalEntry(title: "I made an App", text: "I build an iOS app, whatching a Udemy Course", rating: 3, date: Date.now.addingTimeInterval(-24 * 60 * 60)))
    }
}
