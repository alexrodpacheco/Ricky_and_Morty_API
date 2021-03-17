//
//  InfoService.swift
//  Ricky_and_Morty_API
//
//  Created by Alex Rodrigues Pacheco on 16/03/21.
//

import Foundation

class InfoService {
    
    func getInfoData() {
        
        let urlString = "https://rickandmortyapi.com/api/character"
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if let error = error {
                    print(error)
                }
                
                guard let jsonInfoData = data else {
                    print(error!)
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    let infoData = try decoder.decode(Info.self, from: jsonInfoData)
                    print(infoData)
                    
                }catch{
                    print(error)
                    return
                }
            }
            
            task.resume()
        }
    }
}
