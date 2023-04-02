//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)//상단 바 부분까지 컨테츠가 꽉차게 해 줌.
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.gray) // stack에도 modifier을 달 수 있음. stack안 모든 요소에 적용됨.

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding() // 안에 있는 요소마다 여백을 넣어 줌.

            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline) // 타이틀을 중앙에 위치시킨다
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
