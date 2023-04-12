//
//  menupage1.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/03.
//

import SwiftUI

struct menupage1: View {
    var body: some View {
        
        VStack(spacing: 5){
            HStack(spacing: 5){
                button_2_2()
                VStack(spacing: 5){
                    button_1_1(title: "카카오뱅크", subtitle: "5977", image: Image(systemName: "b.square"))
                    button_1_1(title: "카카오뱅...", subtitle: "결제", image: Image(systemName: "creditcard"))
                }
            }
            button_3_1()
        }
        .fixedSize(horizontal: false, vertical: false)
    }
}

struct menupage1_Previews: PreviewProvider {
    static var previews: some View {
        menupage1()
    }
}
