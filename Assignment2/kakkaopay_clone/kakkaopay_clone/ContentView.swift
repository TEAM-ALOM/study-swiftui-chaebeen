//
//  ContentView.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                NavigationBar()
                
                pagingmenu()
                
                Spacer()
                
                CustomTabs()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
