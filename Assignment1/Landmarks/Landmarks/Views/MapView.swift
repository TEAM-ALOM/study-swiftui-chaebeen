//
//  MapView.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/29.
//

import SwiftUI
import MapKit //Mapkit 을 쓰기 위해 !

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
            }
    }

    // 파라미터 앞에 _ 는? -> 함수에 값을 전달할 때 (coordinate: ...) 이렇게 써야 하는 데, 바로(...)으로 적어넣어도 된다 ! #인자 생략 (Omitting Argument Labels)
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}


// MapKit
// https://developer.apple.com/documentation/mapkit/
/*
 struct MKCoordinateRegion  
 :A rectangular geographic region that centers around a specific latitude and longitude.
    Getting the region coordinates
 
    var center: CLLocationCoordinate2D
    The center point of the region.
 
    var span: MKCoordinateSpan
    The horizontal and vertical span representing the amount of map to display.
 
 struct MKCoordinateSpan
 :The width and height of a map region.
*/
