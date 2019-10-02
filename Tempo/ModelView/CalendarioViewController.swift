//
//  CalendarioViewController.swift
//  Tempo
//
//  Created by treinamento on 01/10/19.
//  Copyright © 2019 EJL. All rights reserved.
//

import UIKit
import ChameleonFramework



class CalendarioViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

  
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
   
    
    let itens = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
      
        let width = view.frame.size.width / 7
        let layout = CollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
      
    
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return itens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
       
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.MyLabel.text = itens[indexPath.item]
        
        //cell.self.backgroundColor = UIColor.init(hexString: "#979DA6", withAlpha: 0.5)
        cell.MyLabel.font = UIFont.init(name: "Hiragino Sans W3", size: 25)
        cell.MyLabel.textColor = UIColor.flatGrayDark
        cell.layer.borderWidth = CGFloat.init(signOf: 0.2, magnitudeOf: 0.2)
        //cell.layer.borderColor = UIColor.white.cgColor
    
        
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
       
        print(indexPath.item)
    }
    
    
}
