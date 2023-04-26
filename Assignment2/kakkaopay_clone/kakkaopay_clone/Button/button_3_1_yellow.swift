//
//  button_3_1_yellow.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/12.
//

import SwiftUI

struct button_3_1_yellow: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.yellow)
            .frame(width: 335, height: 150)
            .overlay(alignment : .topLeading){
                VStack(alignment: .leading) {
                    Text("0P")
                        .font(.title)
                        
                    Text("카카오페이포인트")
                        .font(.subheadline)
                        .opacity(0.5)
                }
                .padding()
            }
            .overlay (alignment: .bottomTrailing) {
                Image(systemName: "wonsign.circle")
                    .font(.system(size: 50))
                    .foregroundColor(.gray).opacity(0.3)
                    .padding()
            }
    }
}

struct button_3_1_yellow_Previews: PreviewProvider {
    static var previews: some View {
        button_3_1_yellow()
    }
}
