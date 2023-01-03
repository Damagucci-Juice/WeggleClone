//
//  BannerView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/30.
//
//
import SwiftUI

struct BannerView: View {    
    @State private var pageIndex = 0
    @State var selectedField: DogField = .shiba
    private var count = 2
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TabView(selection: $pageIndex) {
                ForEach(0..<count, id: \.self) { index in
                    ImageCell(selectedField: $selectedField).tag(index)
                }
            }
            .frame(minWidth: UIScreen.screenWidth, maxWidth: UIScreen.screenWidth,
                   minHeight: UIScreen.screenWidth * 0.75, maxHeight: UIScreen.screenWidth * 0.75)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Capsule()
                .fill(Color.black.opacity(0.3))
                .frame(width: 50, height: 35)
                .overlay {
                    Text("\(pageIndex+1) / \(count)")
                        .foregroundColor(.white)
                    
                }
                .offset(x: -10, y: -10)
        }
    }
}

