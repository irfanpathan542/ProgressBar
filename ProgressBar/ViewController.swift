//
//  ViewController.swift
//  ProgressBar
//
//  Created by iFlame on 4/27/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time : Timer!
    
    var value : Float = 0.0

    @IBOutlet weak var progressBar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.setProgressBar), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setProgressBar() {
        
        value = value + 0.2
        
        progressBar.setProgress(value, animated: true)
        
        if value >= 3.0 {
            time.invalidate()
            time = nil
            progressBar.isHidden = true
        }
        
        
        
    }
}

