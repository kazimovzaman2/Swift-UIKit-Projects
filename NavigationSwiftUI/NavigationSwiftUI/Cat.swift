//
//  Cat.swift
//  NavigationSwiftUI
//
//  Created by Zaman Kazimov on 21.12.24.
//

import Foundation

struct Cat: Identifiable, Hashable {
    var id = UUID()
    let name: String
}


let cats: [Cat] = [
    Cat(name: "Mia"),
    Cat(name: "Max"),
    Cat(name: "Lola"),
    Cat(name: "Toby"),
]
