//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/9/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController, PersonProtocol {

    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(person.name)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}