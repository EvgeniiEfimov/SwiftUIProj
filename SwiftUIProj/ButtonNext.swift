//
//  ButtonNext.swift
//  SwiftUIProj
//
//  Created by User on 08.09.2021.
//

import SwiftUI

struct ButtonNext: View {
    @State private var textButton = "START"
    @Binding var redSignal: Double
    @Binding var yellowSignal: Double
    @Binding var greenSignal: Double
    
    let lightOff = 0.1
    let lightOn = 1.0
    
    enum ColorView {
       case redView, yellowView, greenView
    }
    @State var colorLight = ColorView.redView
    
    var body: some View {
        Button(action: {
            textButton = "NEXT"
            switch colorLight {
            case .redView:
                redSignal = lightOn
                yellowSignal = lightOff
                greenSignal = lightOff
                colorLight = .yellowView
            case .yellowView:
                redSignal = lightOff
                yellowSignal = lightOn
                greenSignal = lightOff
                colorLight = .greenView
            case .greenView:
                redSignal = lightOff
                yellowSignal = lightOff
                greenSignal = lightOn
                colorLight = .redView
            }
        }) {
            Text(textButton)
                .foregroundColor(.white)
                .bold()
        }
        .frame(width: 100, height: 30)
        .background(Color.blue)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.white,
                                    lineWidth: 4)
        )
    }
}
