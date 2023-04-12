//
//  menupage2.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/11.
//

import SwiftUI

struct menupage2: View {
    var body: some View {
        VStack(spacing: 5){
            button_3_1_yellow()
            HStack(spacing: 5) {
                button_1_1(title: "통합내역", subtitle: "", image: Image(systemName: "list.clipboard"))
                button_1_1(title: "1개", subtitle: "내 쿠폰", image: Image(systemName: "ticket"))
                add_button_1_1()
            }
            HStack(spacing: 5){
                button_1_1(title: "신용관리", subtitle: "", image: Image(systemName: "speedometer"))
                button_1_1(title: "선택하기", subtitle: "서비스", image: Image(systemName: ""))
                    .overlay(alignment: .bottomTrailing){
                        Image(systemName: "ellipsis")
                            .font(.system(size: 25))
                            .foregroundColor(.white).opacity(0.3)
                            .padding()
                    }
                add_button_1_1()
            }
        }
    }
}

struct menupage2_Previews: PreviewProvider {
    static var previews: some View {
        menupage2()
    }
}
