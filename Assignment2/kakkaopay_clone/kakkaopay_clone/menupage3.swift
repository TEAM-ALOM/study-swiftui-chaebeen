//
//  menupage3.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/12.
//

import SwiftUI

struct menupage3: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.black).opacity(0.8)
                .frame(width: 335, height: 460)
            VStack{
                Image("lion")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top, 105)
                Text("앞으로. 자주 봐요!")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                Text("App으로. 카카오페이")
                    .font(.title3)
                    .foregroundColor(.white).opacity(0.7)
                    .padding(.bottom, 105)
                Button(action:{}){
                    Text(" 홈 화면 편집하기 ")
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(40)
                }
            }
            
        }
    }
}

struct menupage3_Previews: PreviewProvider {
    static var previews: some View {
        menupage3()
    }
}
