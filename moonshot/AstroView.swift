//
//  AstroView.swift
//  moonshot
//
//  Created by iresh sharma on 27/07/21.
//

import SwiftUI

struct AstroView: View {
    var astronaut: Astronaut
    var body: some View {
        VStack {
            Spacer()
            Text(astronaut.name)
                .font(.largeTitle)
                .bold()
            Image(astronaut.id)
                .resizable()
                .frame(width: 250, height: 250, alignment: .center)
                .clipShape(Circle())
                .shadow(radius: 10)
            Spacer()
            Text(astronaut.description)
                .italic()
                .padding()
            Spacer()
        }
    }
}

struct AstroView_Previews: PreviewProvider {
    static var previews: some View {
        AstroView(astronaut: Astronaut(id: "white", name: "hi", description: "String"))
    }
}
