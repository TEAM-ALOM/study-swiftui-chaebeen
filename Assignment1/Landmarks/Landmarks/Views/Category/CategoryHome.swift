//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/04/05.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List {
                modelData.features[0].image
                    .resizable() // Sets the mode by which SwiftUI resizes an image to fit its space.
                    .scaledToFill() // Scales this view to fill its parent.
                    .frame(height: 200)
                    .clipped() // Clips this view to its bounding rectangular frame.
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!) // ! : 강제 옵셔널 언래핑
                        .listRowInsets(EdgeInsets())
                }
            }
                .navigationTitle("Featured") // Applies an inset to the rows in a list.
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
