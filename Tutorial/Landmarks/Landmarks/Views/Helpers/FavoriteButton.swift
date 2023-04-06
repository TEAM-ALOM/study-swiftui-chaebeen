//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/04/03.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool // 버튼의 현재 상태
    
    var body: some View {
        Button{
            isSet.toggle() // Action
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill": "star")
                .labelStyle(.iconOnly) // label text가 안보이게 한다.
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
