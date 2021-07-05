//
//  bundle-decodable.swift
//  moonshot
//
//  Created by iresh sharma on 05/07/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("No such file found!!")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load the data!!")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Corrupt data")
        }
        
        return loaded
    }
}
