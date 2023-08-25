//
//  LoginView.swift
//  Vatten
//
//  Created by Nick Baur on 25.08.23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Melde dich bei Vatten wieder an")
                        .font(.largeTitle)
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
            
            Image("Plant")
                .resizable()
                .frame(width: 100, height: 104)
                .padding(.bottom, 24)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
