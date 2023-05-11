//
//  button_3_1.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/11.
//

import SwiftUI

struct button_3_1: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.gray)
            .frame(width: 335, height: 150)
            .overlay(alignment : .topLeading){
                VStack(alignment: .leading) {
                    Text("카카오모빌리티")
                        .font(.title)
                        .foregroundColor(.white)
                    Text("6,700원")
                        .font(.title3)
                        .foregroundColor(.white).opacity(0.7
                        )
                }
                .padding()
            }
            .overlay (alignment: .bottomTrailing) {
                VStack(alignment: .trailing) {
                    Text("카카오모빌리티")
                        .foregroundColor(.white).opacity(0.5)
                    Text("04.10(월) 10:13")
                        .foregroundColor(.white).opacity(0.7
                        )
                }
                .font(.subheadline)
                .padding()
            }
    }
}

struct button_3_1_Previews: PreviewProvider {
    static var previews: some View {
        button_3_1()
    }
}
