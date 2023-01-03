//
//  BannerImageCell.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/31.
//

import SwiftUI

struct ImageCell: View {
    let dog: Dog
    
    var body: some View {
        AsyncImage(url: dog.url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            case .failure:
                Image(systemName: "photo")
            @unknown default:
                EmptyView()
            }
        }
    }
}
