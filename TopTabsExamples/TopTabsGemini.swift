//
//  TopTabsGemini.swift
//  TopTabsExamples
//

import SwiftUI

struct TopTabsGemini: View {
    var body: some View {
        TabView {
            Text("Home").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(Color.gray)
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            Text("Alerts").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(Color.yellow)
                .tabItem {
                    Label("Alerts", systemImage: "bell")
                }

            Text("Settings").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                .background(Color.green)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}
