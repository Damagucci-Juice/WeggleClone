//
//  ProfileViewModel.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/02.
//

import SwiftUI

final class ProfileViewModel: ObservableObject, ImageFetchable {
    var imageManager: ImageManager
    @Published var dogs: [Dog] = []
    
    init(image: ImageManager) {
        self.imageManager = image
        (0..<3).forEach { _ in
            Task {
                guard let dog = await fetchData() else { return }
                dogs.append(dog)
            }
        }
    }
    
    func remove(_ offset: IndexSet) {
        dogs.remove(atOffsets: offset)
    }
}
