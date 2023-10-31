//
//  DuckView.swift
//  AwardsCollectionApp
//
//  Created by Акира on 30.10.2023.
//

// ГОСПОДИ ДА КАК ЖЕ Я ХОРОШ ПОСМОТРИТЕ НА НЕГО ДА НЕНАВИЖУ МАТЕМАТИКУ И ГЕОМЕТРИЮ И ДУМАТЬ В ПРИНЦИПЕ

import SwiftUI

struct SwordView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let values = GeometryValues(geometry: geometry)
            
            Path { path in
//
                // Левое лезвие
                path.move(to: CGPoint(
                    x: values.middle - values.nearLine,
                    y: values.nearLine * 2)
                )
                path.addLine(to: CGPoint(
                    x: values.middle - values.nearLine,
                    y: values.middle + values.middle / 2)
                )
                
                // Правое лезввие
                path.move(to: CGPoint(
                    x: values.middle,
                    y: values.nearLine * 2)
                )
                path.addLine(to: CGPoint(
                    x: values.middle,
                    y: values.middle + values.middle / 2)
                )
                
                // Наконечник
                path.move(to: CGPoint(
                    x: values.middle - values.nearLine,
                    y: values.nearLine * 2)
                )
                path.addLine(to: CGPoint(
                    x: values.middle - values.nearLine / 2,
                    y: values.nearLine + values.nearLine / 2)
                )
                path.addLine(to: CGPoint(
                    x: values.middle, y: values.nearLine * 2)
                )
                
                // Эфес меча
                path.move(to: CGPoint(
                    x: values.middle / 2,
                    y: values.middle + values.middle / 2)
                )
                path.addLine(to: CGPoint(
                    x: values.middle + values.nearLine + values.nearLine / 2,
                    y: values.middle + values.middle / 2)
                )
                
                // Рукоять правая
                path.move(to: CGPoint(
                    x: values.middle - values.nearLine / 4,
                    y: values.farLine + values.nearLine / 4)
                )
                path.addLine(to: CGPoint(
                    x: values.middle - values.nearLine / 4,
                    y: values.middle + values.middle / 2)
                )
                
                // Рукоять левая
                path.move(to: CGPoint(
                    x: values.middle - values.nearLine + values.nearLine / 4,
                    y: values.farLine + values.nearLine / 4)
                )
                path.addLine(to: CGPoint(
                    x: values.middle - values.nearLine + values.nearLine / 4,
                    y: values.middle * 1.5)
                )
                
                path.move(to: CGPoint(
                    x: values.middle - values.nearLine + values.nearLine / 4,
                    y: values.farLine + values.nearLine / 4)
                )
                path.addLine(to: CGPoint(
                    x: values.middle - values.nearLine / 4,
                    y: values.farLine + values.nearLine / 4)
                )                
            }
            .stroke(Color.black, lineWidth: 2)
        }
    }
}


struct SwordView_Previews: PreviewProvider {
    static var previews: some View {
        SwordView()
            .frame(width: 200, height: 200)
    }
}
