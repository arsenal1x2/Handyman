//
//  UIVIewController+Extension.swift
//  Handyman
//
//  Created by LTT on 153//19.
//  Copyright © 2019 LTT. All rights reserved.
//

import UIKit

extension UIViewController {
    var appDelegate: AppDelegate? {
        return UIApplication.shared.delegate as? AppDelegate
    }
    
    func closeKeyboard() {
        self.view.endEditing(true)
    }
    
    class func viewController() -> Self {
        return self.init(nibName: String(describing: self), bundle: nil)
    }
    
    static func instantiateFromStoryboard(identifier: String = "") -> Self {
        return instantiateFromStoryboard(viewControllerClass: self, identifier: identifier)
    }
    
    private static func instantiateFromStoryboard<T: UIViewController>(viewControllerClass: T.Type, identifier: String = "", function: String = #function, line: Int = #line, file: String = #file) -> T {
        
        var storyboardName = ""
        if identifier != "" {
            storyboardName = identifier
        } else {
            storyboardName = (viewControllerClass as UIViewController.Type).className
        }
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        guard let scene = storyboard.instantiateViewController(withIdentifier: storyboardName) as? T else {
            fatalError("ViewController with identifier \(storyboardName), not found in \(storyboardName) Storyboard.\nFile : \(file) \nLine Number : \(line) \nFunction : \(function)")
        }
        return scene
    }
    
    var isModal: Bool {
        if let index = navigationController?.viewControllers.index(of: self), index > 0 {
            return false
        } else if presentingViewController != nil {
            return true
        } else if navigationController?.presentingViewController?.presentedViewController == navigationController {
            return true
        } else if tabBarController?.presentingViewController is UITabBarController {
            return true
        } else {
            return false
        }
    }
}

extension UIViewController: NavigationBarDelegate {
    func navigationBarDidClickedBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func addNotificationKeyBoard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
       
            self.view.frame.origin.y = -220
        
    }
    
    @objc func keyboardWillHide() {
        self.view.frame.origin.y = 0
    }
}

extension UIViewController: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
}
