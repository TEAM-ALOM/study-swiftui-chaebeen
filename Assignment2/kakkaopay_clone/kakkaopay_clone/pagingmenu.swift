//
//  pagingmenu.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/27.
//

import SwiftUI

struct pagingmenu: View {
    var body: some View {
        VStack{
            TabView {
                menupage1()
                menupage2()
                menupage3()
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 460)
        }
    }
}

struct pagingmenu_Previews: PreviewProvider {
    static var previews: some View {
        pagingmenu()
    }
}
