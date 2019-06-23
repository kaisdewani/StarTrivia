//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/9/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController, PersonProtocol {

    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var modelLbl: UILabel!
    @IBOutlet weak var makeLbl: UILabel!
    @IBOutlet weak var costLbl: UILabel!
    @IBOutlet weak var crewLbl: UILabel!
    @IBOutlet weak var speedLbl: UILabel!
    @IBOutlet weak var classLbl: UILabel!
    
    
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var person: Person!
    let api = StarshipApi()
    var starships = [String]()
    var currentStarship = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starships = person.starshipUrls
        nextBtn.isEnabled = starships.count > 1
        previousBtn.isEnabled = false
        guard let firstStarship = starships.first else { return }
        getStarship(url: firstStarship)

    }
    
    func getStarship(url: String) {
        api.getStarship(url: url) { (starship) in
            if let starship = starship {
                self.setUpView(starship: starship)
            }
        }
    }
    
    func setUpView(starship: Starship){
        nameLbl.text = starship.name
        modelLbl.text = starship.model
        makeLbl.text = starship.make
        costLbl.text = starship.cost
        crewLbl.text = starship.crew
        speedLbl.text = starship.hyperdrive
        classLbl.text = starship.shipClass
    }
    
    
    @IBAction func previousClicked(_ sender: Any) {
        currentStarship -= 1
        setButtonState()
        
    }
    
    
    @IBAction func nextClicked(_ sender: Any) {
        currentStarship += 1
        setButtonState()
        
    }
    
    func setButtonState(){
        nextBtn.isEnabled = currentStarship == starships.count - 1 ? false : true
        previousBtn.isEnabled = currentStarship == 0 ? false : true
        
        getStarship(url: starships[currentStarship])
    }
    
    

}
