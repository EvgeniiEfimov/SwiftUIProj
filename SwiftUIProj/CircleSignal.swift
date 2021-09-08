//
//  CircleSignal.swift
//  SwiftUIProj
//
//  Created by User on 08.09.2021.
//

import SwiftUI

struct CircleSignal: View {
    @State var redSignal = 0.1
    @State var yellowSignal = 0.1
    @State var greenSignal = 0.1

    var body: some View {
        VStack {
            Circle()
                .strokeBorder(Color.white, lineWidth: 4)
                .background(Circle().foregroundColor(.red))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .opacity(redSignal)
            Circle()
                .strokeBorder(Color.white, lineWidth: 4)
                .background(Circle().foregroundColor(.yellow))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .opacity(yellowSignal)
            Circle()
                .strokeBorder(Color.white, lineWidth: 4)
                .background(Circle().foregroundColor(.green))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .opacity(greenSignal)
            Spacer()
            ButtonNext(redSignal: $redSignal,
                       yellowSignal: $yellowSignal,
                       greenSignal: $greenSignal)
        }
    }
}

struct CircleSignal_Previews: PreviewProvider {
    static var previews: some View {
        CircleSignal()
    }
}
