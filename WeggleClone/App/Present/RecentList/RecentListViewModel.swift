//
//  RecentListViewModel.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/02.
//

import Foundation

final class RecentListViewModel: ObservableObject, ImageFetchable {
    var imageManager: ImageManager
    @Published var dogs: [Dog] = []
    private var count = 6
    
    init(imageManager: ImageManager) {
        self.imageManager = imageManager
        (0..<count).forEach { _ in
            Task {
                guard let dog = await fetchData() else { return }
                dogs.append(dog)
            }
        }
    }
}
