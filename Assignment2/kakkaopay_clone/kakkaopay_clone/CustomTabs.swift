//
//  CustomTabs.swift
//  kakkaopay_clone
//
//  Created by 김채빈 on 2023/05/11.
//

import SwiftUI

struct CustomTabs: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    
                }){
                    Text("결제")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Button(action: {
                    
                }){
                    Text("멤버십")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.horizontal, 40)
                
                Button(action: {
                    
                }){
                    Text("송금")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .frame(height: 50)
            .foregroundColor(.white)
            
            HStack{
                Button(action: {
                    
                }){
                    VStack{
                        Image(systemName: "wonsign")
                        
                        Text("자산")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }){
                    VStack{
                        Image(systemName: "gift")
                        
                        Text("혜택")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }){
                    ZStack{
                        Circle()
                            .foregroundColor(.yellow)
                            .frame(width: 45)
                            .fixedSize()

                        Image(systemName: "barcode.viewfinder")
                            .font(.system(size: 25))
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }){
                    VStack{
                        Image(systemName: "chart.line.uptrend.xyaxis")
                        
                        Text("주식")
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }){
                    VStack{
                        Image(systemName: "square.grid.2x2")
                        
                        Text("전체")
                            .font(.caption)
                    }
                }
                
            }
            .padding(20)
            .frame(height: 40)
        }
        .foregroundColor(.white)
        .padding(.vertical, 20)
        .background(Color.gray)
        .cornerRadius(20, corners: [.topLeft, .topRight])
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct CustomTabs_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabs()
    }
}
