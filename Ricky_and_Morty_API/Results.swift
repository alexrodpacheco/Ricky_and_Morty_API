//
//  Results.swift
//  Ricky_and_Morty_API
//
//  Created by Alex Rodrigues Pacheco on 16/03/21.
//

import Foundation

struct Result: Decodable {
    let id: Int
    let name, status, species, type: String
    let gender: String
    let image: String
}
