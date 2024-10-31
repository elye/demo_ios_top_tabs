//
//  TopTabsChatGpt.swift
//  TopTabsExamples
//

import SwiftUI

struct TopTabsChatGpt: View {
    @State private var selectedTab = 0 // Track the selected tab

    var body: some View {
        VStack {
            // Custom Top Tab Bar
            HStack {
                Button(action: { selectedTab = 0 }) {
                    Text("Tab 1")
                        .padding()
                        .background(selectedTab == 0 ? Color.blue : Color.clear)
                        .foregroundColor(selectedTab == 0 ? .white : .black)
                        .cornerRadius(8)
                }

                Button(action: { selectedTab = 1 }) {
                    Text("Tab 2")
                        .padding()
                        .background(selectedTab == 1 ? Color.blue : Color.clear)
                        .foregroundColor(selectedTab == 1 ? .white : .black)
                        .cornerRadius(8)
                }

                Button(action: { selectedTab = 2 }) {
                    Text("Tab 3")
                        .padding()
                        .background(selectedTab == 2 ? Color.blue : Color.clear)
                        .foregroundColor(selectedTab == 2 ? .white : .black)
                        .cornerRadius(8)
                }
            }
            .padding()
            
            // Tab Content
            TabView(selection: $selectedTab) {
                Text("Content for Tab 1")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.gray)
                    .tag(0)
                Text("Content for Tab 2")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.yellow)
                    .tag(1)
                Text("Content for Tab 3")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.green)
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Hides default tab indicators
        }
    }
}

