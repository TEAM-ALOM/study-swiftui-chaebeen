//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/30.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark]{ // 랜드마크 구조체 배열 타입
        modelData.landmarks.filter {landmark in //filter는 내부 값을 걸러서 추출하는 역할
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //List의 생성자에 전달하는 배열은 각 요소를 처리하는 방법을 지정하는 클로저를 사용하여 뷰를 생성한다.
        //List의 data를 identifiable 하게 만드는 방법 1
        //List(landmarks, id: \.id){ landmark in // landmarks 라는 배열을 전달하겠다. id: \.id는 kye path이다.
        // landmark in->클로저를 사용해서 각 배열 요소룰 landmark라는 파라미터로 처리하겠다는 의미.
        // List의 data를 identifiable 하게 만드는 방법 2. Identifiable conformance 주기
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){ //state 변수에 값을 전달하기 위해 $접두사 사용
                    Text("Favorites Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks") //list에 이름 다는 modifier
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}

// @State (상태프로퍼티) -> 뷰 내부에서 특정 View 의 상태를 나타내는 변수
// 상태를 변경할 때마다 body속성이 재설정 된다. 뷰 자체가 다시 렌더링 되는 것! 따라서 State를 변경 할 때마다 항상 새로운 View에서 렌더링 된다.
// 뷰내부에서 밖에 사용이 불가능함 때문에 private로 선언

//@State : 값이 변경되는 것을 화면에 보여줘야 할 때
//@Binding : State 같은 녀석들을 화면간에 공유해야 할 때
//@EnvironmentObject : 하위뷰에 모두 공유해야 할 때 -> @Published, observableObject
