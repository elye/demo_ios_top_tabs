//
//  TopTabsIllama.swift
//  TopTabsExamples
//


import SwiftUI

struct TopTabsIllama: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        // Home action
                        selectedTab = 0
                    }) {
                        Label("Home", systemImage: "house")
                    }
                    Button(action: {
                        // Alerts action
                        selectedTab = 1
                    }) {
                        Label("Alerts", systemImage: "bell")
                    }
                    Button(action: {
                        // Settings action
                        selectedTab = 2
                    }) {
                        Label("Settings", systemImage: "gear")
                    }
                }
                // Your content here
                switch selectedTab {
                case 0:
                    Text("Home Content")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.gray)
                        .padding()
                case 1:
                    Text("Alerts Content")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.yellow)
                        .padding()
                case 2:
                    Text("Settings Content")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.green)
                        .padding()
                default:
                    EmptyView()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
