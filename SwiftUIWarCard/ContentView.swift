//
//  ContentView.swift
//  SwiftUIWarCard
//
//  Created by Apple on 18/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var randNum1 = 4
    @State private var randNum2 = 5
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
            
                .edgesIgnoringSafeArea(.all)
    
            VStack {
                
                Image("logo")
            Spacer()
                HStack{
                    Image("card" + String(randNum1))
                    Image("card" + String(randNum2)
                )}
                Spacer()
                Button(action: {
                    
                    //Randomize the randNum1 + randNum2 State Properties in
                    self.randNum1 =
                    Int.random(in:2...14)
                    
                    self.randNum2 =
                    Int.random(in:2...14)
                    //Update scores
                    if self.randNum1 > self.randNum2{score1 += 1}
                    else if self.randNum2 > self.randNum1 {
                        score2 += 1
                    }
                       
                       
                       }){Image("dealbutton")
                        .renderingMode(.original)
                }
                
                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .bold()
                            .padding(.bottom,20)
                        Text(String(score1))
                    }
                    .padding(.leading,20)
                    .foregroundColor(.white)
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .bold()
                        .padding(.bottom,20)
                        Text(String(score2))
                        
                    }.padding(.trailing,20)
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
