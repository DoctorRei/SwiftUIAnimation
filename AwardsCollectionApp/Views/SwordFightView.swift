//
//  SwordFightView.swift
//  AwardsCollectionApp
//
//  Created by Акира on 31.10.2023.
//

import SwiftUI

struct SwordFightView: View {
    
    @State var animationStart = false
    @State var degrees = 0.0
    @State var opacityForText = 0.0
    
    var body: some View {
        
        VStack {
            Spacer()
            
            Text("Я задолбался, но хоть не что-то стандартное")
                .opacity(opacityForText)
                .animation(.easeIn(duration: 0.5), value: animationStart)
                .offset(y: 50)
            
            HStack {
                SwordView()
                    .frame(width: 200, height: 200)
                    .offset(x: animationStart ? 50 : 0)
                    .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 1))
                    .animation(.easeOut, value: animationStart)
                Spacer()
            }
            .offset(x: animationStart ? 150: 0)
            
            
            Spacer()
            
            Button("Atack!") {
                if !animationStart {
                    animationStart.toggle()
                    degrees = 260
                    opacityForText = 1
                } else {
                    reset()
                }
            }
            Spacer()
        }
    }
    
    func reset() {
        animationStart.toggle()
        degrees = 0
        opacityForText = 0.0
    }
    
}

struct SwordFightView_Previews: PreviewProvider {
    static var previews: some View {
        SwordFightView()
    }
}
