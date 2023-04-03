//
//  SwiftUIView.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/03.
//

import SwiftUI

struct View: View {
    var body: some View {
        
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.yellow)
                    .frame(width: 220, height: 300)
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.gray)
                        .frame(width:110, height: 150)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.gray)
                        .frame(width:110, height: 150)

                }
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(.gray)
                .frame(width: 350, height: 150)

        }
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
