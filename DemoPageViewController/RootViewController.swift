//
//  RootViewController.swift
//  DemoPageViewController
//
//  Created by Fabiola Ramirez on 4/25/18.
//  Copyright © 2018 FabiolaRamirez. All rights reserved.
//

import UIKit

class RootViewController: UIPageViewController {
    
    lazy var myViewControllers: [UIViewController] = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let oneViewController = storyboard.instantiateViewController(withIdentifier: "OneViewController")
        let twoViewController = storyboard.instantiateViewController(withIdentifier: "TwoViewController")
        
        return [oneViewController, twoViewController]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self

        if let firstViewController = myViewControllers.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }

}

extension RootViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = myViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard myViewControllers.count > previousIndex else {
            return nil
        }
        
        return myViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = myViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = vcIndex + 1
        
        guard myViewControllers.count != nextIndex else {
            return nil
        }
        
        guard myViewControllers.count > nextIndex else {
            return nil
        }
        
        return myViewControllers[nextIndex]
    }
    
    
}

extension RootViewController: UIPageViewControllerDelegate {
    
}
