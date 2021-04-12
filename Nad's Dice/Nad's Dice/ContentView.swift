//
//  ContentView.swift
//  Nad's Dice
//
//  Created by Nadia Ahmadian on 2021-04-12.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
            ZStack{
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("diceeLogo")
                        .resizable().frame(width: 200, height: 200)
                    Spacer()
                    HStack {
                        DiceView(number : leftDiceNumber)
                        DiceView(number: rightDiceNumber)
                    }
                    .padding(.horizontal)
                    Spacer()
                    Button(action: {
                        self.leftDiceNumber = Int.random(in: 1...6)
                        self.rightDiceNumber = Int.random(in: 1...6)
                        
                    }) {
                        Text("ROLL if you DARE")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                            .padding()
                    }
                    .background(Color.purple)
                }
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

