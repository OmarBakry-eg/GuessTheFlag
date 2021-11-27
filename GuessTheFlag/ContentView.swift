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
    var body: some View {
        VStack{
            Button("Button 1"){}.buttonStyle(.bordered)
            Button("Button 2",role: .destructive){}.buttonStyle(.bordered)
            Button("Button 3"){}.buttonStyle(.borderedProminent)
            Button("Button 4",role: .destructive){}.buttonStyle(.borderedProminent)
            
            Button { //custom button
                print("tapped")
            }label : {
                Text("Tap me!").padding().foregroundColor(.white).background(.red)
            }
            Button { //custom button
                print("tapped")
            }label : {
                Label("Edit",systemImage: "pencil").font(.system(size: 59)) //resize the label with font
            }
            Spacer().frame(height: 40)
            Image(systemName: "pencil").resizable().renderingMode(.original).frame(width: 100, height: 100, alignment: .center)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
