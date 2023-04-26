//
//  balance button.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/09.
//

import SwiftUI

struct button_2_2: View {
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: 220, height: 305)
                .overlay(alignment : .topLeading){
                    VStack(alignment: .leading) {
                        Text("6,087원")
                            .font(.title)
                        Text("카카오페이머니 ⓘ")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding()
                }
                .overlay (alignment: .bottomTrailing) {
                    Image(systemName: "wonsign.circle")
                        .font(.system(size: 50))
                        .foregroundColor(.white).opacity(0.3)
                        .padding()
                }
        }
    }
}

struct button_2_2_Previews: PreviewProvider {
    static var previews: some View {
        button_2_2()
    }
}
