//
//  CategoryScrollView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/30.
//

import SwiftUI

struct CategoryScrollView: View {
    private let categoryNames = [
        "식품", "반려동물", "패션/잡화", "인테리어", "뷰티/주얼리", "생활용품"
    ]
    private let images = [
        "swift", "pawprint.fill", "tshirt.fill", "lightbulb.fill", "diamond.inset.filled", "applelogo"
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 40) {
                ForEach(0..<categoryNames.count, id: \.self) { index in
                    VStack {
                        Image(systemName: images[index])
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .font(.largeTitle)
                            .frame(width: 70, height: 70)
                            .background(Color(.systemGray5))
                            .cornerRadius(15)
                        Text(categoryNames[index])
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct CategoryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryScrollView()
    }
}
