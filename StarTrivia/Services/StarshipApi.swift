//
//  StarshipApi.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/23/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import Foundation
import Alamofire

class StarshipApi {
    func getStarship(url: String, completion: @escaping StarshipResponseCompletion){
        guard let url = URL(string: url) else { return }
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error {
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = response.data else { return completion(nil) }
            let jsonDecoder = JSONDecoder()
            do{
                let starship = try jsonDecoder.decode(Starship.self, from: data)
                completion(starship)
            } catch{
                debugPrint(error.localizedDescription)
                completion(nil)
            }
            
            
        }
    }
}
