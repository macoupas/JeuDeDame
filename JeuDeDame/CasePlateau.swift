//
//  CasePlateau.swift
//  JeuDeDame
//
//  Created by Maxime COUPAS on 25/05/2018.
//  Copyright © 2018 Maxime COUPAS. All rights reserved.
//

import UIKit

class CasePlateau: UICollectionViewCell {
    
    @IBOutlet weak var pionView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        pionView.layer.cornerRadius = frame.size.width / 2.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        pionView.isHidden = false
    }
    
    
    func configure(withPion pion: PionColor, andBackground background: CaseBackground) {
        
        switch pion {
        case .blanc:
            pionView.backgroundColor = UIColor.white
        case .noir:
            pionView.backgroundColor = UIColor.brown
        case .vide:
            pionView.isHidden = true
            
        }
        
        switch background {
        case .dark:
            imageView.image = #imageLiteral(resourceName: "bubinga_gauthey")
        default:
            imageView.image = #imageLiteral(resourceName: "bois_clair")
        }
    }
}
