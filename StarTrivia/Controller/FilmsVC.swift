//
//  FilmsVC.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/9/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import UIKit

class FilmsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var episodeLbl: UILabel!
    @IBOutlet weak var directorLbl: UILabel!
    @IBOutlet weak var producerLbl: UILabel!
    @IBOutlet weak var releasedLbl: UILabel!
    @IBOutlet weak var crawlLbl: UITextView!
    
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func previousClicked(_ sender: Any) {
        setButtonState()
    }
    
    
    @IBAction func nextClicked(_ sender: Any) {
        setButtonState()
    }
    
    func setButtonState(){

        
    }

}
