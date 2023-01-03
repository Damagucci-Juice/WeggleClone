//
//  ImageFetchable.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/02.
//

import Foundation

protocol ImageFetchable {
    var imageManager: ImageManager { get }
    
    func fetchData(_ breed: String) async -> Dog?
}

extension ImageFetchable {
    func fetchData(_ breed: String = "shiba") async -> Dog? {
        guard let dog = try? await imageManager.requestImages(breed) else { return nil }
        return dog
    }
}
