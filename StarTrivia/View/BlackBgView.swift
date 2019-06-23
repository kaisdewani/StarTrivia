//
//  BlackBgView.swift
//  StarTrivia
//
//  Created by Kais Dewani on 6/6/19.
//  Copyright © 2019 Kais Dewani. All rights reserved.
//

import UIKit

class BlackBgView: UIView{
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
    
}

class BlackBgButton: UIButton{
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_BG
        layer.cornerRadius = 10
    }
}
