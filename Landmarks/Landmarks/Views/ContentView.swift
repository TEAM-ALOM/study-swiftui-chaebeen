//
//  ContentView.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/03/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)//상단 바 부분까지 컨테츠가 꽉차게 해 줌.
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("Califonia")
                }
                .font(.subheadline)
                .foregroundColor(.gray) // stack에도 modifier을 달 수 있음. stack안 모든 요소에 적용됨.
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding() // 안에 있는 요소마다 여백을 넣어 줌.
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
