//
//  ViewController.swift
//  Magic 8 Balls
//
//  Created by kawsar on 1/13/19.
//  Copyright © 2019 kawsar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview1: UIImageView!
    var randomImageIndex: Int = 0
    
    var images = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImages()
    }
    
    func updateImages() {
        randomImageIndex = Int(arc4random_uniform(5))
        imageview1.image = UIImage(named: images[randomImageIndex])
        
    }
    
}

