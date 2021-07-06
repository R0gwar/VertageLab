//
//  ButtonView.swift
//  VertageLab_test
//
//  Created by Danil Lanin on 24.06.2021.
//

import SwiftUI
struct ButtonView: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.blue)
            .cornerRadius(15.0)
           
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

