//
//  RegisterView.swift
//  Vatten
//
//  Created by Nick Baur on 25.08.23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Registriere dich bei Vatten")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
