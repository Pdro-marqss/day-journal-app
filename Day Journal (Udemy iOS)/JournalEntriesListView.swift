//
//  ContentView.swift
//  Day Journal (Udemy iOS)
//
//  Created by Pedro Marques on 11/04/24.
//

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State var showCreateView: Bool = false
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: EditJournalEntryView(editingJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal entries")
            
            .toolbar {
                Button(action: {
                    showCreateView = true
                }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showCreateView) {
                CreateJournalEntryView()
            }
        }
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}
