//
//  ContentView.swift
//  VertageLab_test
//
//  Created by Danil Lanin on 24.06.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var lgColor = ConstantContainer()
    @State private var password = ""
    @State private var email = ""
    var body: some View {
        
        NavigationView {
            VStack{
                TextField("Enter email", text: $email)
                    .padding()
                    .background(lgColor.lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .foregroundColor(.black)
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lgColor.lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .foregroundColor(.black)
                NavigationLink( destination: MapJSON(),
                                label: {
                                    ButtonView()
                                }).navigationBarTitle(email)
                    .navigationBarHidden(true)
                    .disabled(email.isEmpty || password.isEmpty)
            }
            
            .padding()
        }
        
    }
    
}

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
