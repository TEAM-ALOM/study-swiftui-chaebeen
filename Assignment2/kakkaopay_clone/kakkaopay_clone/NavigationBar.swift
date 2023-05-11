//
//  NavigationBar.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/05/11.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack{
            Image(systemName: "message.fill")
                .font(.system(size: 24))
                .padding(.leading, 15)
            
            Text("pay")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .font(.system(size: 24))
                .padding(.trailing, 15)
            
            Image(systemName: "bell")
                .font(.system(size: 24))
                .padding(.trailing, 15)
            
            Image(systemName: "gearshape")
                .font(.system(size: 24))
                .padding(.trailing, 15)
        }
        .foregroundColor(.white)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
