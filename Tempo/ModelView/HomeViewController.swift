//
//  ViewController.swift
//  Tempo
//
//  Created by treinamento on 30/09/19.
//  Copyright © 2019 EJL. All rights reserved.
//

import UIKit
import ChameleonFramework

class HomeViewController: UIViewController {

    
    @IBOutlet weak var botaoEntrar: UIButton!
    @IBOutlet weak var botaoRegistrar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.init(
            gradientStyle: UIGradientStyle.topToBottom,
            withFrame: self.view.frame,
            andColors: [ UIColor.white, UIColor.flatTeal
            ]
        )
        
        // Do any additional setup after loading the view.
    }

    @IBAction func botaoRegistrar(_ sender: Any) {
    }
    
    @IBAction func botaoEntrar(_ sender: Any) {
    }
}

