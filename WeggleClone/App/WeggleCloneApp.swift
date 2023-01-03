//
//  WeggleCloneApp.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/30.
//

import SwiftUI

@main
struct WeggleCloneApp: App {
    private let imageManager = ImageManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(imageManager)
        }
    }
}
