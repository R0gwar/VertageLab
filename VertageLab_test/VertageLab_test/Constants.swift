//
//  Constants.swift
//  VertageLab_test
//
//  Created by Danil Lanin on 07.07.2021.
//

import SwiftUI
class ConstantContainer: ObservableObject{
    @Published var link = "https://3lolo.github.io/lat_lng.json"
    @Published var lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
}
struct Constants: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Constants_Previews: PreviewProvider {
    static var previews: some View {
        Constants()
    }
}
