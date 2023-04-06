//
//  CategoryItem.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/04/06.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable() // Sets the mode by which SwiftUI resizes an image to fit its space. 프레임 사이즈에 맞추어 이미지 축소
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
                .foregroundColor(.primary) // .primary : The color to use for primary content.
        }
        .padding(.leading, 15)
    } // Text that you pass as the label for a navigation link renders using the environment’s accent color, and images may render as template images.
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
