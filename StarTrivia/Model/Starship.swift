//
//  Starship.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/23/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import Foundation

struct Starship: Codable {
    
    let name: String
    let model: String
    let make: String
    let cost: String
    let crew: String
    let hyperdrive: String
    let shipClass: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case make = "manufacturer"
        case cost = "cost_in_credits"
        case crew
        case hyperdrive = "hyperdrive_rating"
        case shipClass = "starship_class"
    }
    
}
