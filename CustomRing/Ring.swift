//
//  Ring.swift
//  CustomRing
//
//  Created by mohammad mugish on 22/11/20.
//

import SwiftUI

struct Ring: View {
    var color1 = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
    var color2 = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    var width : CGFloat = 50
    var height : CGFloat = 50
    var percent : CGFloat = 44
    @Binding var show : Bool
    
    var body: some View {
        
        let multiplier = width / 44
        let progress = 1 - (percent / 100)
        
        return ZStack {
            
            Circle()
                .stroke(Color.black.opacity(0.1) , style: StrokeStyle(lineWidth : 5 * multiplier))
                .frame(width : width , height: height)
            
            
            Circle()
                .trim(from: show ? progress : 1 , to: 1)
                .stroke(
                    
                    LinearGradient(gradient: Gradient(colors: [Color(color1) , Color(color2)]), startPoint: .topTrailing, endPoint: .bottomLeading),
                    
                    style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,0], dashPhase: 0)
                )
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                .frame(width: width, height: height)
                .shadow(color: Color(color2).opacity(0.1), radius: 3 * multiplier , x: 0, y: 3 * multiplier)
            
            Text("\(show ? Int(percent) : 0)%")
                .font(.system(size: 14 * multiplier))
                .fontWeight(.bold)
                .onTapGesture {
                    self.show.toggle()
                }
            
        }
    }
}

struct Ring_Previews: PreviewProvider {
    static var previews: some View {
        Ring(show: .constant(true))
    }
}
