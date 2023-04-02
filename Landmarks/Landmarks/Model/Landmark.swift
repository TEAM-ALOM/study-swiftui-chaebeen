//
//  Landmark.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
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
