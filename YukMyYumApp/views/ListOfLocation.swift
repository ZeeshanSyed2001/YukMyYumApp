//
//  ListOfLocation.swift
//  YukMyYumApp
//
//  Created by Zeeshan on 12-12-2023.
//

import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let address: String
}

struct ContentView: View {
    let locations: [Location] = [
        Location(name: "Location 1", address: "123 Main St"),
        Location(name: "Location 2", address: "456 Elm St"),
        Location(name: "Location 3", address: "789 Oak St")
    ]

    var body: some View {
        NavigationView {
            List(locations) { location in
                NavigationLink(destination: Text("Details for \(location.name)")) {
                    VStack(alignment: .leading) {
                        Text(location.name)
                            .font(.headline)
                        Text(location.address)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Locations")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
