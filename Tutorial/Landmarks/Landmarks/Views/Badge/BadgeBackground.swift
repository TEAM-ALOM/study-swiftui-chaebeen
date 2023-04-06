//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/04/03.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader{ geometry in // 만든 shape의 size를 이리저리 조정하기 위함
            Path{ path in
                var width: CGFloat = min(geometry.size.width, geometry.size.height) // -> 종횡비 고정
                let height = width
                let xScale: CGFloat = 0.832
                let xOffset = (width * (1.0 - xScale)) / 2.0 // -> 육각형이 x축을 기준으로 중앙에 오게 하기 위함.
                width *= xScale
                
                path.move( // start point로 이동
                    to: CGPoint(
                        x: width * 0.95 + xOffset,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                HexagonParameters.segments.forEach { segment in
                    path.addLine( // 선 그리기
                        to: CGPoint( //end point
                            x: width * segment.line.x + xOffset,
                            y: height * segment.line.y
                        )
                    )
                    
                    path.addQuadCurve(  // 곡선 그리기
                        to: CGPoint( // end point
                            x: width * segment.curve.x + xOffset,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint( // 곡률점(control point)
                            x: width * segment.control.x + xOffset,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            .fill(.linearGradient( // 육각형에 그라데이션으로 색 채워 넣기
                Gradient(colors: [Self.gradientStart, Self.gradientEnd]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.6)
            ))
        }
        .aspectRatio(1, contentMode: .fit) // 종횡비 유지
    }
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255) // 지정한 색
    static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
