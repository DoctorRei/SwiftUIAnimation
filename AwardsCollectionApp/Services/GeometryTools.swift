//
//  GeometryTools.swift
//  AwardsCollectionApp
//
//  Created by Акира on 30.10.2023.
//

import SwiftUI

    

    struct GeometryValues {
        
        let width: CGFloat
        let height: CGFloat
        let size: CGFloat
        let middle: CGFloat
        let nearLine: CGFloat
        let farLine: CGFloat

        init(geometry: GeometryProxy) {
            self.width = geometry.size.width
            self.height = geometry.size.height
            self.size = min(width, height)
            self.middle = size / 2
            self.nearLine = size * 0.1
            self.farLine = size * 0.9
        }
    }
    

