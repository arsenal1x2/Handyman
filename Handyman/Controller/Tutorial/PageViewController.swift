//
//  PageViewController.swift
//  Handyman
//
//  Created by LTT on 193//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController,UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    private lazy var pages: [TutorialViewController] = createViewControllers()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        let firstViewController =  pages[0]
        self.setViewControllers([firstViewController], direction:
            .reverse, animated: true, completion: nil)
        

        // Do any additional setup after loading the view.
    }
    
    func createAndConfigureViewController(imageName: String, title: String) -> TutorialViewController {
        let vc = TutorialViewController.instantiateFromStoryboard()
        vc.loadView()
        vc.configure(imageName: imageName, tutorialTitle: title)
        return vc
    }
    
    func createViewControllers() -> [TutorialViewController] {
        let tutorialVC1 = createAndConfigureViewController(imageName: "tutorialimage1", title: "Easily to look for thousands of handymen to help your problems")
        let tutorialVC2 = createAndConfigureViewController(imageName: "imagetutorial2", title: "Cheaper and faster than hiring normal craftman")
        let tutorialVC3 = createAndConfigureViewController(imageName: "imagetutorial3", title: "Be one of the handyman and start to work and earn money")
        let arrVC = [tutorialVC1, tutorialVC2, tutorialVC3]
        return arrVC
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let indexViewController = pages.index(of: viewController as! TutorialViewController) else {
            return nil
        }
        var previousIndex = indexViewController - 1
        if (previousIndex < 0) { previousIndex = pages.count - 1 }
        if (previousIndex >= pages.count) { return nil }
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let indexViewController = pages.index(of: viewController as! TutorialViewController) else {
            return nil
        }
        var nextIndex = indexViewController + 1
        if (nextIndex > pages.count) { return nil }
        if (nextIndex == pages.count) { nextIndex = 0 }
        return pages[nextIndex]
    }
    

}


