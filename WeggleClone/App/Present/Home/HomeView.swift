//
//  HomeView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/30.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var container: DIContainer
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    BannerView(viewModel: container.bannerViewModel)
                    
//                    CategoryScrollView()
                    
//                    RecentListView(viewModel: container.recentListViewModel)

//                    GroupPurchaseView(viewModel: container.groupPurchaseViewModel)
                    
                    // 따끈따끈 신규 리뷰 영상
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
