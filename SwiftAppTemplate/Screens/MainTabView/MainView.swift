//
//  HomeView.swift
//  SwiftAppTemplate
//
//  Created by Gunveer Sandhu on 03/01/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            ForEach(viewModel.tabs, id: \.self) { tab in
                tab.tabItem.view
                    .tabItem {
                        Label(tab.tabItem.title, systemImage: tab.tabItem.icon)
                    }
                    .tag(tab)
            }
        }
    }
}

#Preview {
    MainView()
}