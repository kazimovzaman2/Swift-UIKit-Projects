//
//  Dog.swift
//  NavigationSwiftUI
//
//  Created by Zaman Kazimov on 21.12.24.
//

import Foundation

struct Dog: Identifiable, Hashable {
    var id = UUID()
    let name : String
}


let dogs : [Dog] = [
    Dog(name: "Rex"),
    Dog(name: "Bella"),
    Dog(name: "Max"),
    Dog(name: "Lola"),
    Dog(name: "Lucy"),
]
