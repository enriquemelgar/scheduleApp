//
//  ContentView.swift
//  scheduleApp
//
//  Created by Carlos Aquije on 21/02/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Topics(topicName: "All", topicIcon: "calendar")
            Topics(topicName: "Books", topicIcon: "book")
            Topics(topicName: "Movies/Series", topicIcon: "movieclapper")
            Topics(topicName: "Games", topicIcon: "gamecontroller")
            Spacer()
        }.padding()
    }
}

struct Topics: View {
    let topicName: String
    let topicIcon: String

    var body: some View {
        Button(action: showBooksList) {
            Label(topicName, systemImage: topicIcon).foregroundStyle(Color.green)
        }
    }
}

private func showBooksList() {
    
}

#Preview {
    ContentView()
}
