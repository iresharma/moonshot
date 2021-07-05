//
//  mission.swift
//  moonshot
//
//  Created by iresh sharma on 05/07/21.
//

import Foundation


struct Mission: Codable, Identifiable {
    
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formatedLaunchDate: String {
        if let launchDate = launchDate {
            let formater = DateFormatter()
            formater.dateStyle = .long
            return formater.string(from: launchDate)
        } else {
            return "N/A"
        }
    }
}
