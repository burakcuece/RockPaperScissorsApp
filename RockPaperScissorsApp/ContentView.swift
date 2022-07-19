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
    
    @State var cpuImage = "rock"
    @State var playerImage = "rock"
    
    var body: some View {
        VStack {
            
            Text("Points: \(cpuPoints)")
                .font(.system(size: 24))
                .bold()
            
            Image(cpuImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            Image(playerImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .onTapGesture {
                    let cpuTap = Int.random(in: 1...3)
                    cpuImage = imageGenerator(cpuTap)
                    
                    let myTap = Int.random(in: 1...3)
                    playerImage = imageGenerator(myTap)
                    
                    calculatePoints(myTap, cpuTap)
                }
            
            Text("Points: \(playerPoints)")
                .font(.system(size: 24))
                .bold()
            
        }
    }
    
    func imageGenerator(_ num: Int) -> String {
        if num == 1 {
            return "rock"
        } else if num == 2 {
            return "paper"
        } else if num == 3 {
            return "scissors"
        }
        return "rock"
    }
    
    func calculatePoints(_ my: Int, _ cpu: Int) {
        //1 = rock, 2 = paper, 3 = scissors
        if my == 1 && cpu == 2 {
            cpuPoints = cpuPoints + 1
        }
        if my == 1 && cpu == 3 {
            playerPoints = playerPoints + 1
        }
        
        if my == 2 && cpu == 1 {
            playerPoints = playerPoints + 1
        }
        if my == 2 && cpu == 3 {
            cpuPoints = cpuPoints + 1
        }
        
        if my == 3 && cpu == 1 {
            cpuPoints = cpuPoints + 1
        }
        if my == 3 && cpu == 2 {
            playerPoints = playerPoints + 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
