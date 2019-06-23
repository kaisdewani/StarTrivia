//
//  PersonApi.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/6/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import Foundation
import Alamofire


class PersonApi {
    
    func getRandomPersonAlamo(id: Int, completion: @escaping PersonResponseCompletion) {
        guard let url = URL(string: "\(PERSON_URL)\(id)") else { return }
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error {
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
        
            guard let data = response.data else { return completion(nil)}
            let jsonDecoder = JSONDecoder()
            do {
                let person = try jsonDecoder.decode(Person.self, from: data)
                completion(person)
            } catch {
                debugPrint(error.localizedDescription)
                completion(nil)
            }
        }
    }
}
