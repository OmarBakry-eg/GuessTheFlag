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
    @State private var showingAlert = false
    var body: some View {
        VStack{
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert) { // just can take two buttons for now 
                Button("OK", role: .cancel) { }
                Button("Cancel", role: .destructive) { }
            } message: {
                Text("Please read this.")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
