//
//  PathView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 05.08.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let values = GeometryValues(geometry: geometry)
            
            Path { path in
                path.move(to: CGPoint(x: values.middle + values.nearLine, y: values.nearLine))
                path.addLine(to: CGPoint(x: values.farLine, y: values.farLine))
                path.addLine(to: CGPoint(x: values.nearLine, y: values.farLine))
                path.addLine(to: CGPoint(x: values.middle - values.nearLine, y: values.nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: values.middle, y: values.nearLine))
                path.addLine(to: CGPoint(x: values.middle, y: values.farLine))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(
                    lineWidth: 3,
                    dash: [values.size / values.nearLine]
                )
            )
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(values.nearLine / 100)
                .offset(x: -values.size / 7.25)
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
