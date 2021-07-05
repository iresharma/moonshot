//
//  missionView.swift
//  moonshot
//
//  Created by iresh sharma on 05/07/21.
//

import SwiftUI

struct MissionView: View {
    
    var mission: Mission
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Text(mission.displayName)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    Text(mission.formatedLaunchDate)
                        .font(.caption)
                        .padding(.bottom)
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.7, alignment: .center)
                    Text(mission.description)
                        .font(.body)
                        .italic()
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("Crew")
                        .font(.title)
                        .bold()
                    LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 2)) {
                        ForEach(mission.crew, id: \.self.name) { crew in
                            CrewNav(crew: crew, dest: Text("Destination"))
                        }
                    }
                }
            }
        }
    }
}

struct CrewNav: View {
    var crew: Mission.CrewRole
    var dest: Text
    
    var body: some View {
        NavigationLink(destination: dest) {
            HStack {
                Image(crew.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(crew.name)
                        .bold()
                    Text(crew.role)
                        .font(.caption)
                }.padding(.leading)
                Spacer()
            }.padding()
        }
    }
}

struct missionView_Peviews: PreviewProvider {
    static var previews: some View {
        MissionView(mission: Mission(id: 7, launchDate: nil, crew: [Mission.CrewRole(name: "grissom", role: "Command Pilot"), Mission.CrewRole(name: "grisdsssom", role: "Command Pilot"), Mission.CrewRole(name: "grissadsom", role: "Command Pilot")], description: "Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a mission;Hey this a missionvHey this a missionHey this a mission"))
    }
}
