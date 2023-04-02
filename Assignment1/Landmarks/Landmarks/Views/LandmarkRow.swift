//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//  list 안에 집어 넣을 landmark 한 줄 뷰 만들기

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark // 변수를 만들었으므로 파라미터로 값을 전달 받아야 함.

    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)

            Spacer()
            
            //landmark의 isFavorite값에 따라 다른 뷰
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
