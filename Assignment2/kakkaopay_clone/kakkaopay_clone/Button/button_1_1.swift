//
//  button_1_1.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/11.
//

import SwiftUI

struct button_1_1: View {
    var title: String
    var subtitle: String
    var image: Image
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.gray)
            .frame(width:110, height: 150)
            .overlay(alignment : .topLeading){
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(subtitle)
                        .font(.callout)
                        .foregroundColor(.white).opacity(0.5)
                }
                .padding()
            }
            .overlay (alignment: .bottomTrailing) {
                image
                    .font(.system(size: 35))
                    .foregroundColor(.white).opacity(0.3)
                    .padding()
            }
    }
}

struct button_1_1_Previews: PreviewProvider {
    static var previews: some View {
        button_1_1(title: "카카오뱅크", subtitle: "5977", image: Image(systemName: "star"))
    }
}
