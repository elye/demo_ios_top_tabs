//
//  TopTabsLibrary.swift
//  TopTabsExamples
//

import SwiftUI
import SlidingTabView

public struct TopTabsLibrary : View {
    @State private var tabIndex = 0
    public init() {}
    public var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex, tabs:["Home", "Friends", "Settings"], animation: .easeInOut)
            Spacer()
            if tabIndex == 0 {
                Label("Home", systemImage: "house")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(Color.gray)
            } else if tabIndex == 1 {
                Label("Alerts", systemImage: "bell")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(Color.yellow)
            } else if tabIndex == 2 {
                Label("Settings", systemImage: "gear")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .background(Color.green)
            }
            Spacer()
        }
    }
}
