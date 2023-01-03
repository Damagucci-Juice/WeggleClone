//
//  GroupPurchaseView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/02.
//

import SwiftUI

enum DogField: String, Hashable, CaseIterable {
    case shiba, beagle, dingo
}

struct GroupPurchaseView: View {
    @State var selectedField: DogField = .shiba
    private let count = 6
    private let normalBackground = Color(.systemGray5)
    private let accentBackground = Color(.systemPink)
    private let textColor = Color.gray
    private let accentTextColor = Color.white
    private let capsuleWidth: CGFloat = 100
    private let capsuleHeight: CGFloat = 30
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            HeadLineView(title: "인원별 공구에 참여해보세요", subTitle: "모일수록 저렴해지는 매력적인 공구")
            
            HStack(spacing: 10) {
                Button("시바견") {
                    withAnimation {
                        selectedField = .shiba
                    }
                }
                .foregroundColor(selectedField == .shiba
                                 ? accentTextColor
                                 : textColor)
                .frame(width: capsuleWidth, height: capsuleHeight)
                .background(RoundedRectangle(cornerRadius: capsuleHeight).fill(selectedField == .shiba ?
                                                                    accentBackground
                                                                    : normalBackground))
                
                Button("비글") {
                    withAnimation {
                        selectedField = .beagle
                    }
                }
                .foregroundColor(selectedField == .beagle
                                 ? accentTextColor
                                 : textColor)
                .frame(width: capsuleWidth, height: capsuleHeight)
                .background(RoundedRectangle(cornerRadius: capsuleHeight).fill(selectedField == .beagle ?
                                                                    accentBackground
                                                                    : normalBackground))
                
                Button("딩고") {
                    withAnimation {
                        selectedField = .dingo
                    }
                }
                .foregroundColor(selectedField == .dingo
                                 ? accentTextColor
                                 : textColor)
                .frame(width: capsuleWidth, height: capsuleHeight)
                .background(RoundedRectangle(cornerRadius: capsuleHeight).fill(selectedField == .dingo ?
                                                                    accentBackground
                                                                    : normalBackground))
            }
            
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
                                Text(100500, format: .currency(code: "KRW"))
                            }
                        }
                    }
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                selectedField = .shiba
            }
        }
    }
}
