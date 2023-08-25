//
//  ContentView.swift
//  Vatten
//
//  Created by Nick Baur on 24.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("VATTEN")
                            .font(.custom("IBM", size: 32))
                        .tracking(10)
                        
                        Text("Vergiss mit der Vatten App nie mehr deine Pflanzen zu giessen!")
                            .font(.system(size: 18))
                            .fontWeight(.thin)
                    }
                    Spacer()
                }
                .padding()
                
                Image("Vatten_plants")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                
                NavigationLink {
                    RegisterView()
                        .toolbarRole(.editor)
                } label: {
                    Text("Registrieren")
                        .foregroundColor(Color.background)
                        .font(.system(size: 18))
                        .bold()
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(RoundedRectangle(cornerRadius: 12))
                        .tint(Color.main)
                }
                .padding(.horizontal)
                
                
                NavigationLink {
                    LoginView()
                        .toolbarRole(.editor)
                } label: {
                    Text("Anmelden")
                        .foregroundColor(Color.main)
                        .font(.system(size: 18))
                        .bold()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                }
                .buttonStyle(.plain)
                .padding([.horizontal, .bottom])
            }
            .padding(.top, 48)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
