//
//  CustomCircle.swift
//  Svetofor
//
//  Created by Dmitrii Onegin on 14.02.2022.
//

import SwiftUI

struct CustomCircle: View {
    
    let color: Color
    let isOn: Bool
    
    var body: some View {
        Circle()
            .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
            .foregroundColor(color)
            .opacity(isOn ? 1 : 0.4)
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
    }
}

struct CustomCircle_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircle(color: .blue, isOn: true)
    }
}
