//
//  BannerImageCell.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/31.
//

import SwiftUI

struct ImageCell: View {
    @State private var dog: Dog = Dog(url: nil)
    @EnvironmentObject var imageManager: ImageManager
    @Binding var selectedField: DogField
    
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
        .onAppear{
            Task {
                self.dog = await loadDog(selectedField)
            }
        }
    }
    
    func loadDog(_ field: DogField) async -> Dog {
        guard let dog = try? await imageManager.requestImages(field.rawValue) else { fatalError() }
        return dog
    }
}
