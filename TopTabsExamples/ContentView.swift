//
//  ContentView.swift
//  TopTabsExamples
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                        VStack {
                            NavigationLink(destination: BottomTabs()) {
                                Text("Default Bottom Tabs")
                            }
                            NavigationLink(destination: TopTabsStackOverflow()) {
                                Text("Top Tabs StackOverflow")
                            }
                            NavigationLink(destination: TopTabsLibrary()) {
                                Text("Top Tabs Library")
                            }
                            NavigationLink(destination: TopTabsChatGpt()) {
                                Text("Top Tabs ChatGPT")
                            }
                            NavigationLink(destination: TopTabsGemini()) {
                                Text("Top Tabs Gemini")
                            }
                            NavigationLink(destination: TopTabsIllama()) {
                                Text("Top Tabs Illama")
                            }
                        }
                    }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
