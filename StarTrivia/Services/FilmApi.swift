//
//  FilmApi.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/23/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import Foundation
import Alamofire

class FilmsApi {
    
    func getFilm(url: String, completion: @escaping FilmResponseCompletion){
        
        guard let url = URL(string: url) else { return }
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error {
                
            }
        }
    }
    
}
