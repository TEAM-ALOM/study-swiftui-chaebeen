//
//  Landmark.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//
// Landmark 구조체 정의

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {  // Landmark 구조체 정의
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool // Codable로 해놔서 key추가 가능.
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }

    private var imageName: String
    var image: Image {  //image 변수
        Image(imageName)
    }

    private var coordinates: Coordinates // 위치 변수 coordinates
    var locationCoordinate: CLLocationCoordinate2D { //MapKit 과 상호작용할 때 쓸 변수 (Coordinates구조체 멤버 변수로 jason파일과 연동한 듯)
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }

    struct Coordinates:Hashable, Codable{ //Coordinates 구조체 정의
        var latitude: Double
        var longitude: Double
    }
}
