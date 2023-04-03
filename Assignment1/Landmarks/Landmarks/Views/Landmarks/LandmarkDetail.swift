//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        } // where절 -> 특정 패턴과 결합하여 조건을 추가하는 역할. 이때, $0은 클로저에 전달된 Landmark 객체를 의미. where 절에서는 landmark.id와 $0.id가 같은지 확인. 만약 같으면 해당 Landmark 객체의 인덱스를 반환 '!':옵셔널 해제를 강제. 자세한 내용은 아래 참조.
    
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)//상단 바 부분까지 컨테츠가 꽉차게 해 줌.
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack{
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite) // $ -> environmentObject를 공유할 때 변수 앞에 적어줘야 한다.
                }
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
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}

// where절 : where 키워드를 사용하며, 그 뒤에 관련 타입에 대한 제약사항이나 충족해야 하는 관계 조건을 정의하면 된다. 블록의 타입, 메서드가 시작하는 중괄호({}) 전에 활용할 수 있다.
// optional (?, !) : 변수나 상수가 nil일 수 도 있다.
