//
//  CurvesView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct CurvesView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let values = GeometryValues(geometry: geometry)
            
            Path { path in
                path.move(to: CGPoint(x: values.middle, y: values.nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: values.farLine, y: values.middle),
                    control: CGPoint(x: values.size, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: values.middle, y: values.farLine),
                    control: CGPoint(x: values.size, y: values.size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: values.nearLine, y: values.middle),
                    control: CGPoint(x: 0, y: values.size)
                )
                path.addQuadCurve(
                    to: CGPoint(x: values.middle, y: values.nearLine),
                    control: CGPoint(x: 0, y: 0)
                )
            }
            .fill(
                RadialGradient(
                    colors: [.white, .yellow],
                    center: .center,
                    startRadius: values.size * 0.05,
                    endRadius: values.size * 0.6
                )
            )
            
            Path { path in
                path.addArc(
                    center: CGPoint(x: values.nearLine, y: values.nearLine),
                    radius: values.middle,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: values.farLine, y: values.nearLine),
                    radius: values.middle,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: values.farLine, y: values.farLine),
                    radius: values.middle,
                    startAngle: .degrees(270),
                    endAngle: .degrees(180),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: values.nearLine, y: values.farLine),
                    radius: values.middle,
                    startAngle: .degrees(0),
                    endAngle: .degrees(270),
                    clockwise: true
                )
                path.closeSubpath()
            }
            .stroke(Color.orange, lineWidth: 2)
        }
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView()
            .frame(width: 200, height: 200)
    }
}
