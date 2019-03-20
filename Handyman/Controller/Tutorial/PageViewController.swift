//
//  PageViewController.swift
//  Handyman
//
//  Created by LTT on 193//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate {
    
    private lazy var pages: [TutorialViewController] = createViewControllers()
    private(set) lazy var pageControl = UIPageControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        let firstViewController =  pages[0]
        self.setViewControllers([firstViewController], direction:
            .reverse, animated: true, completion: nil)
        configurePageControl()

        // Do any additional setup after loading the view.
    }
    
    func configurePageControl() {
        pageControl = UIPageControl(frame: CGRect(x: 0,y:self.view.frame.midY + 300,width: self.view.bounds.width,height: 100))
        self.pageControl.numberOfPages = pages.count
        self.pageControl.currentPage = 0
        self.pageControl.tintColor = UIColor.black
        self.pageControl.pageIndicatorTintColor = UIColor.white
        self.pageControl.currentPageIndicatorTintColor = UIColor(hexString: "2CA4BF")
        self.pageControl.isEnabled = true
        pageControl.addTarget(self, action: #selector(pageControlDidChange), for: .valueChanged)
        self.view.addSubview(pageControl)
    }
    
    @objc func pageControlDidChange() {
        let vc = pages[pageControl.currentPage]
        self.setViewControllers([vc], direction: .reverse, animated: true, completion: nil)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
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
}

extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let indexViewController = pages.index(of: viewController as! TutorialViewController) else {
            return nil
        }
        let previousIndex = indexViewController - 1
        if (previousIndex < 0) { return nil }
        if (previousIndex >= pages.count) { return nil }
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let indexViewController = pages.index(of: viewController as! TutorialViewController) else {
            return nil
        }
        let nextIndex = indexViewController + 1
        if (nextIndex >= pages.count) { return nil }
        return pages[nextIndex]
    }
}


