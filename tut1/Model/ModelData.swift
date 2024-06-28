//
//  ModelData.swift
//  tut1
//
//  Created by Sonal on 19/06/24.
//

import Foundation

// generic func - used to load data file from the bundle
// this method that fetches JSON data with a given name from the app’s main bundle.

var landmarks : [Landmark] = load("landmarkData", withExt: "json");

func load<T: Decodable>(_ filename: String, withExt: String? = nil) -> T {
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
