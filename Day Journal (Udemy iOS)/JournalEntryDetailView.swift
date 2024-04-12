//
//  JournalEntryDetailView.swift
//  Day Journal (Udemy iOS)
//
//  Created by Pedro Marques on 11/04/24.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(detailJournalEntry.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                }
                .padding(.bottom)
                
                Text(detailJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
    }
}

#Preview {
    NavigationStack {
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "A great Golf Day", text: "I found a nice pot of sadgoldm i'm rich i tell ya!!! I found a nisdce pot of goldm i'm rich i tell ya!!dsad! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm isa'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I foudnd a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell yadsa!!! I found a nice pot of goldm i' dsam rich i tadsaell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm id 'm rich i tell ya!!! I found a nice pot of goldm i'm rich ia tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm richads i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice p ot of goldm ibb 'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm dadi'm rich i tsadadsaafell ya!!! I foun d a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell yaada!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot ofsdad goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! adsI found a nice pot of goldsm i'm risach i tell ya!!! I found a nice pot adsof goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!! I found a nice pot of goldm i'm rich i tell ya!!!", rating: 5, date: Date()))
    }
}
