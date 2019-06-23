//
//  Constants.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/6/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor
let URL_BASE = "https://swapi.co/api/"
let PERSON_URL = URL_BASE + "people/"


typealias PersonResponseCompletion = (Person?) -> ()
typealias HomeworldResponseCompletion = (Homeworld?) -> ()
typealias VehicleResponseCompletion = (Vehicle?) -> ()
typealias StarshipResponseCompletion = (Starship?) -> ()
typealias FilmResponseCompletion = (Film?) -> ()
