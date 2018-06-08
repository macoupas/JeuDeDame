//
//  ViewController.swift
//  JeuDeDame
//
//  Created by Maxime COUPAS on 01/06/2018.
//  Copyright © 2018 Maxime COUPAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Case Plateau", for: indexPath) as! CasePlateau
        
        if indexPath.row % 2 == indexPath.section % 2 {
            if indexPath.section < 4 {
                cell.configure(withPion: .noir, andBackground: .light)
            } else {
                cell.configure(withPion: .vide, andBackground: .light)
            }
        } else {
            if indexPath.section > 5 {
                cell.configure(withPion: .blanc, andBackground: .dark)
            } else {
                cell.configure(withPion: .vide, andBackground: .dark)
            }
        }
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: collectionView.frame.size.width / 10, height: collectionView.frame.size.height / 10)
    }
}

