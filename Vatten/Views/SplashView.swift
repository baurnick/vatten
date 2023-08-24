//
//  SplashView.swift
//  Vatten
//
//  Created by Nick Baur on 24.08.23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State private var opacity = 0.5
    @State private var size = 0.8
    
    var body: some View {
        ZStack {
            if isActive {
                ContentView()
            } else {
                Color.main
                    .ignoresSafeArea()
                
                Image("Vatten_Logo")
                    .resizable()
                    .frame(width: 233, height: 198)
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 0.5)) {
                            size = 0.9
                            opacity = 1.0
                        }
                    }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
