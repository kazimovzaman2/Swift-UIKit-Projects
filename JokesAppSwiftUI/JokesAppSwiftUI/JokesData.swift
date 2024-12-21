//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Zaman Kazimov on 21.12.24.
//

import Foundation

struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}


struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}


// https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
