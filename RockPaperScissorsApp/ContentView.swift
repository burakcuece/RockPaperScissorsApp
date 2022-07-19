//
//  ContentView.swift
//  RockPaperScissorsApp
//
//  Created by Burak Cüce on 19.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @State var cpuPoints = 0
    @State var playerPoints = 0
    
    var body: some View {
        VStack {
            
            Text("Points: 0")
                .font(.system(size: 24))
                .bold()
            
            Image("rock")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Image("rock")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Text("Points: 0")
                .font(.system(size: 24))
                .bold()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
