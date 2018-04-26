//
//  ViewController.swift
//  DemoPageViewController
//
//  Created by Fabiola Ramirez on 4/25/18.
//  Copyright © 2018 FabiolaRamirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeViews(_ sender: UIButton) {
        print(" >>>>> \(self.childViewControllers)")
        
        let rootViewController: RootViewController = self.childViewControllers[0] as! RootViewController
        rootViewController.changeTwoViewController()
    }
    
    
    @IBAction func goFirst(_ sender: UIButton) {
        
        let rootViewController: RootViewController = self.childViewControllers[0] as! RootViewController
        rootViewController.changeOneViewController()
    }
    
}

