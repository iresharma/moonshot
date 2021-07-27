//
//  ContentView.swift
//  moonshot
//
//  Created by iresh sharma on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    
    var missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationView {
            List(missions) { mission in
                NavigationLink(destination: MissionView(mission: mission)) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 55)
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .bold()
                            .padding(.bottom, 3.0)
                        Text(mission.formatedLaunchDate)
                            .font(.caption2)
                    }
                    .padding(.leading)
                }
            }
            .navigationTitle("MoonShot 🌙")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
