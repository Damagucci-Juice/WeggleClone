//
//  ContentView.swift
//  WeggleClone
//
//  Created by YEONGJIN JANG on 2022/12/30.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("홈", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("마이", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
