//
//  GroupPurchaseViewModel.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/02.
//

import SwiftUI

final class GroupPurchaseViewModel: ObservableObject, ImageFetchable {
    var imageManager: ImageManager
    
    private var shiba: [Dog] = []
    private var beagle: [Dog] = []
    private var poodle: [Dog] = []
    private var count = 6
    @Published var dogs: [Dog] = []
    
    init(imageManager: ImageManager) {
        self.imageManager = imageManager
        DogField.allCases.forEach { field in
            loadCategory(field)
        }
    }
    
    func loadCategory(_ field: DogField) {
        (0..<count).forEach { _ in
            Task {
                guard let dog = await fetchData(field.rawValue) else { return }
                switch field {
                case .shiba:
                    shiba.append(dog)
                case .beagle:
                    beagle.append(dog)
                case .dingo:
                    poodle.append(dog)
                }
            }
        }
    }
    
    func changeField(_ field: DogField) {
        switch field {
        case .shiba:
            dogs = shiba
        case .beagle:
            dogs = beagle
        case .dingo:
            dogs = poodle
        }
    }
}
