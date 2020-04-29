//
//  ViewController.swift
//  CoresApp
//
//  Created by Anderson Matuchenko on 29/04/20.
//  Copyright © 2020 Anderson Matuchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slOpacityOutlet: UISlider!
    
    @IBOutlet weak var viewCor: UIView!
    override func viewDidLoad() {
        print("Hello World")
        super.viewDidLoad()
        
        viewCor.backgroundColor = UIColor.white
        slOpacityOutlet.minimumValue = 0
        slOpacityOutlet.maximumValue = 1
        slOpacityOutlet.value = 0.5
        slOpacity(self)
        // Do any additional setup after loading the view.
    }

    @IBAction func btnVermelho(_ sender: Any) {
        if viewCor.backgroundColor==UIColor.yellow {
            viewCor.backgroundColor = UIColor.orange
        } else if (viewCor.backgroundColor==UIColor.blue) {
            viewCor.backgroundColor = UIColor.purple
        } else {
            viewCor.backgroundColor = UIColor.red
        }
         
    }
    @IBAction func btnAmarelo(_ sender: Any) {
        if viewCor.backgroundColor==UIColor.red {
            viewCor.backgroundColor = UIColor.orange
        } else if (viewCor.backgroundColor==UIColor.blue) {
            viewCor.backgroundColor = UIColor.green
        } else {
            viewCor.backgroundColor = UIColor.yellow
        }
                 
    }
    
    @IBAction func btnAzul(_ sender: Any) {
        if viewCor.backgroundColor==UIColor.yellow {
            viewCor.backgroundColor = UIColor.green
        } else if (viewCor.backgroundColor==UIColor.red) {
            viewCor.backgroundColor = UIColor.purple
        } else {
            viewCor.backgroundColor = UIColor.blue
        }
         
        //viewCor.backgroundColor = UIColor.blue
    }
    
  

    @IBAction func btnResetar(_ sender: Any) {
        viewCor.backgroundColor = UIColor.white
    }
    
    @IBAction func slOpacity(_ sender: Any) {
        var opacity = slOpacityOutlet.value
        viewCor.alpha = CGFloat(opacity)
    }
}

