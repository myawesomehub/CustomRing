//
//  ContentView.swift
//  CustomRing
//
//  Created by mohammad mugish on 22/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        VStack(spacing : 40){
            Ring(color1: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), color2: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), width: 88, height: 88, percent: 90, show: $show)
                .animation(Animation.easeInOut(duration: 2))
            Ring(color1: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), color2: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), width: 88, height: 88, percent: 75, show: $show)
                .animation(Animation.easeInOut(duration: 2))
            Ring(color1: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), color2: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1), width: 88, height: 88, percent: 60, show: $show)
                .animation(Animation.easeInOut(duration: 2))
            Text("You just need to pass the parameters and you will se the magic !")
                .fontWeight(.semibold)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
