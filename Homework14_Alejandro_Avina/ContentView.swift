//
//  ContentView.swift
//  Homework14_Alejandro_Avina
//
//  Created by Alejandro Avina on 11/14/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale=1.0;
    
    var body: some View {
        VStack {
            Text("Press twice to shrink")
            
            Image("rome")
                .resizable()
                .frame(width:500,height:400)
                .scaleEffect(scale)
                .onTapGesture(count:2){
                    let minScale = scale - 0.5;
                    if (minScale == 0.5){
                        scale = minScale ;
                    }
                }
                .onLongPressGesture(minimumDuration: 2) {
                    let maxScale = scale + 0.5;
                    scale = max(maxScale,0.5);
                    }
            
            Text("Press down to to go back to normal")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
