//
//  ContentView.swift
//  Vatten
//
//  Created by Nick Baur on 24.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            Text("Hoi Jessi")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color.main)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
