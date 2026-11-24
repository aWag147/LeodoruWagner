//
//  AchievmentData.swift
//  Leodoru
//
//  Created by Adrian Wagner on 13.10.26.
//

import Foundation

var achievments: [Achievment] = load("achievementData.json")

func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldnt find \(filename) in main bundle")
            }
    
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
