//
//  add_button_1_1.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/12.
//

import SwiftUI

struct add_button_1_1: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(.black).opacity(0.85)
                .frame(width:110, height: 150)
            Circle().frame(width: 35)
            Image(systemName: "plus")
                .foregroundColor(.white)
                .font(.system(size: 20))
        }
    }
}

struct add_button_1_1_Previews: PreviewProvider {
    static var previews: some View {
        add_button_1_1()
    }
}
