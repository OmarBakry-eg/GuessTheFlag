//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Omar Bakry on 27/11/2021.

// Color.primary used for text.
// ignoresSafeArea() func.
// VStack, HStack and ZStack.
// .background(.ultraThinMaterial) like raised button background in flutter.
// .foregroundStyle could make a vibrance effect.
// Linear gradient, radial and angular.
// button role .destructive make it red like delete
// renderingMode(.original) show the origin color to the image

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
  @State private var correctAnswer = Int.random(in: 0...2)

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue,.black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack(spacing:30){
                VStack {
                    Text("Tap the flag of").foregroundColor(.white).font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer]).foregroundColor(.white).font(.largeTitle.weight(.semibold))
                }
             
                ForEach(0..<3){ num in
                    Button {
                       flagTapped(num)
                    } label :{
                        Image(countries[num]).renderingMode(.original).clipShape(Capsule()).shadow(radius:5)
                    }
                    
                }
            }
        }.alert(scoreTitle, isPresented: $showingScore)
        {
            Button("Continue",action: askQuestion)
        } message:{
            Text( scoreTitle == "Correct" ? "Your score is UP" : "Your score is DOWN")
        }
        .ignoresSafeArea()
    }
    func flagTapped(_ number:Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else{
            scoreTitle = "Worng"
        }
        showingScore = true
    }
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
