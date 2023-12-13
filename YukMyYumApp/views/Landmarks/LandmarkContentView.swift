//
//  LandmarkContentView.swift
//  YukMyYumApp
//
//  Created by Zeeshan on 12-12-2023.
//


import SwiftUI

struct LandmarkContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Vancouver")
                    .font(.title)

                HStack {
                    Text("City in Canada")
                    Spacer()
                    Text("Canda")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)

                Divider()

                Text("About Vancouver")
                    .font(.title2)
                Text("Vancouver, a bustling west coast seaport in British Columbia, is among Canada’s densest, most ethnically diverse cities. A popular filming location, it’s surrounded by mountains, and also has thriving art, theatre and music scenes")
            }
            .padding()

            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
