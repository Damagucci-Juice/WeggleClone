//
//  DIContainer.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2023/01/02.
//

import SwiftUI

//final class DIContainer: ObservableObject {
//    let factory: DependencyFactory
//    lazy var profileViewModel = factory.makeProfileViewModel()
//    lazy var recentListViewModel =  factory.makeRecentListViewModel()
//    lazy var groupPurchaseViewModel = factory.makeGroupPurchaseViewModel()
//    
//    init(factory: DependencyFactory) {
//        self.factory = factory
//    }
//    
//    
//}
//
//final class DependencyFactory {
//    private let imageManager: ImageManager
//    
//    init(imageManager: ImageManager) {
//        self.imageManager = imageManager
//    }
//    
//    func makeProfileViewModel() -> ProfileViewModel {
//        ProfileViewModel(image: imageManager)
//    }
//    
//    func makeRecentListViewModel() -> RecentListViewModel {
//        RecentListViewModel(imageManager: imageManager)
//    }
//    
//    func makeGroupPurchaseViewModel() -> GroupPurchaseViewModel {
//        GroupPurchaseViewModel(imageManager: imageManager)
//    }
//}
