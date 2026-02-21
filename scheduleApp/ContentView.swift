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
            ForEach(topics) { topic in
                Button(action: showBooksList) {
                    Label(topic.name, systemImage: topic.icon)
                }
            }
            Spacer()
        }.padding(10)
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct Topics: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
}

var topics = [
    Topics(name: "Books", icon: "book"),
    Topics(name: "Movies/Series", icon: "movieclapper"),
    Topics(name: "Games", icon: "gamecontroller")
]

private func showBooksList() {
    
}

#Preview {
    ContentView()
}
