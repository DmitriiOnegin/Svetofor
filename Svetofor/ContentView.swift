//
//  ContentView.swift
//  Svetofor
//
//  Created by Dmitrii Onegin on 14.02.2022.
//

import SwiftUI

enum ColorSvet {
    case red
    case orange
    case green
    
    var color: Color {
        switch self {
        case .red:
             return Color.red
        case .orange:
            return Color.orange
        case .green:
            return Color.green
        }
    }
}

struct ContentView: View {
    
    let colors: [Color] = [.red, .orange, .green]
    @State private var isColor = ColorSvet.red
    @State private var text = "Start"
    
    var body: some View {
        VStack(spacing: 30) {
            
            ForEach(colors, id: \.self) { color in
                CustomCircle(color: color, isOn: isColor.color == color ? true : false)
            }

            Spacer()
            Button {
                switch isColor {
                case .red:
                    isColor = .orange
                case .orange:
                    isColor = .green
                default:
                    isColor = .red
                }
                if text == "Start" {
                    text = "Next"
                }
            } label: {
                buttonLabel
            }
        }
        .padding()
       
    }
    
    private var buttonLabel: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.width / 6)
                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black, lineWidth: 5))
            Text(text)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


