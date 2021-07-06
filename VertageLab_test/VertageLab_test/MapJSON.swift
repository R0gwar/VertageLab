//
//  ContentView.swift
//  JSON Map
//

import MapKit
import SwiftUI
struct MapJSON: View {
    @State private var places: [Location] = []
    @State private var coordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 50.45, longitude: 30.52),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    @ObservedObject var constant = ConstantContainer()
    var body: some View {
        NavigationView{
            Map(
                coordinateRegion: $coordinateRegion,
                annotationItems: places
            ) { location in
                MapAnnotation(
                    coordinate: CLLocationCoordinate2D(
                        latitude: location.lat,
                        longitude: location.lng
                    )
                ) {
                    VStack {
                        Text(location.name)
                            .font(.caption2)
                            .bold()
                        Image(systemName: "circle.fill")
                            .font(.title2)
                            .foregroundColor(.red)
                            .shadow(radius: 1)
                    }
                }
            }
            .onAppear(perform: readFile)
            .edgesIgnoringSafeArea(.all)
        }
    }
    private func readFile() {
        if let url = URL(string: constant.link),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let jsonData = try? decoder.decode(JSONData.self, from: data) {
                self.places = jsonData.places
            }
        }
    }
}

struct JSONData: Decodable {
    let places: [Location]
}

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let lat: Double
    let lng: Double
}

struct MapJSON_Previews: PreviewProvider {
    static var previews: some View {
        MapJSON()
    }
}
