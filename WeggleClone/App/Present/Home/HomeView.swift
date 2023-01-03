//
//  HomeView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/30.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    BannerView()
                    
                    CategoryScrollView()
                        .padding(.horizontal)
                    RecentListView()
                        .padding(.horizontal)
                    GroupPurchaseView()
                        .padding(.horizontal)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("logo")
                }
            }
        }
    }
}
