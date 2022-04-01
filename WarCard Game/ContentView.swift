//
//  ContentView.swift
//  WarCard Game
//
//  Created by Kevin Marion on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 4
    @State private var randNum2 = 5
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    
    var body: some View {
        
        ZStack {
            Image ("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                Image ("logo")
                
                Spacer()
                
                HStack {
                    Image ("card" + String(randNum1))
                    Image ("card" + String (randNum2))
                }
                Spacer()
                
                Button {
                    
                    // Randomize the randNum1 +
                    //randNum2 state properties
                    self.randNum1 =
                    Int.random(in: 2...14)
                    self.randNum2 =
                    Int.random(in: 2...14)
                    
                    // Update scores
                    if self.randNum1 > self.randNum2 {
                        self.score1 += 1
                    }
                    else if self.randNum2 > self.randNum1 {
                        self.score2 += 1
                    }
                } label: {
                    Image("dealbutton")
                        .renderingMode(.original)
                    
                    
                }
                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score1))
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score2))
                    }
                    .padding(.trailing, 20)
                    .foregroundColor(.white)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
