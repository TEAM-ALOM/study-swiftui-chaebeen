//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/28.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

//@StateObject : A property wrapper type that instantiates an observable object.
//단 한 번 인스턴스가 생성되며, View를 처음부터 새로 그리지 않고, ObservableObject 에서의 데이터가 변할 때, 그 ObservableObject 의 데이터가 들어간 부분만 View를 다시 그린다
