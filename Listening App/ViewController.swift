//
//  ViewController.swift
//  Listening App
//
//  Created by USER on 2019/04/09.
//  Copyright © 2019年 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


 
    @IBOutlet weak var imageview: UIImageView!

    @IBOutlet weak var asmr: UIImageView!
    override func viewDidLoad(){
        let image = UIImage(named: "74_28_7")
        imageview.image = image
        let image2 = UIImage(named: "Untitled drawing (12)")
        asmr.image = image2
    }
}

