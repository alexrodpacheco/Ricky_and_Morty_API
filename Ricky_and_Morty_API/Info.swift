//
//  Info.swift
//  Ricky_and_Morty_API
//
//  Created by Alex Rodrigues Pacheco on 16/03/21.
//

import Foundation

struct Info: Decodable {
    let info: InfoClass
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case info = "info"
        case results = "results"
    }
}

struct InfoClass: Decodable {
    let count, pages: Int
    let next: String
}

extension Info {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        info = try container.decode(InfoClass.self, forKey: .info)
        results = try container.decode([Result].self, forKey: .results)
    }
}


