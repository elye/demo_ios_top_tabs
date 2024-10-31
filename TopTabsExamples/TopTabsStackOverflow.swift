//
//  TopTabsStackOverflow.swift
//  TopTabsExamples
//

import SwiftUI

struct TopTabsStackOverflow : View {
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            // Use picker view and set picker style as segmented
            Picker("Tabs", selection: $selectedTab) {
                Text("Home").tag(0)
                Text("Alerts").tag(1)
                Text("Settings").tag(2)
            }
            .pickerStyle(.segmented)
            .padding()
        
            Spacer()
        
            // Then display the view based on the tab selected
            switch selectedTab {
            case 0:
                Text("This is Home screen").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.gray)
            case 1:
                Text("This is Alert screen").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.yellow)
            case 2:
                Text("This is Setting screen").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.green)
            default:
                Text("This is Home screen").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(Color.gray)
        }
        Spacer()
    }
        // use this to hide the back button
        // .navigationBarBackButtonHidden()
}
}
