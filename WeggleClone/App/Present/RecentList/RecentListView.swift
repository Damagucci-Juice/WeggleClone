//
//  RecentListView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/01.
//

import SwiftUI

struct RecentListView: View {
    private var count: Int = 6
    @State var selectedField: DogField = .shiba
    var body: some View {
        VStack {
            HeadLineView(title: "최근 본 상품", subTitle: "눈여겨본 상품 놓치지 마세요")
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<count, id: \.self) { index in
                        VStack(alignment: .leading) {
                            ImageCell(selectedField: $selectedField)
                                .frame(width: LayoutConst.threeBoxWidth,
                                       height: LayoutConst.threeBoxWidth)
                                .clipped()
                                .cornerRadius(10)
                            Text("seller name")
                                .foregroundColor(.secondary)
                            Text("item Title")
                                .foregroundColor(.black)
                            HStack {
                                Text("38%")
                                    .foregroundColor(.accentColor)
                                Text(6900, format: .currency(code: "KRW"))
                            }
                        }
                    }
                }
            }
            .padding(.top, 20)
        }
    }
}
