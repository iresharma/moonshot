//
//  ContentView.swift
//  moonshot
//
//  Created by iresh sharma on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    
    var astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    
    var missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Text("\(astronauts.count)")
                .padding()
            Text("\(missions.count)")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
