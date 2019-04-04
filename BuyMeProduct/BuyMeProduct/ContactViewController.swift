//
//  ContactViewController.swift
//  BuyMeProduct
//
//  Created by Nikhil Dange on 28/02/19.
//  Copyright © 2019 learn. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(scrollView)
    }
    
    // Called to notify the viewcontroller that its view have just laid out its subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if #available(iOS 11.0, *) {
            scrollView.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.frame.width, height: view.frame.height - view.safeAreaInsets.bottom - view.safeAreaInsets.top)
        }
        else {
            scrollView.frame = CGRect(x: 0, y: topLayoutGuide.length, width: view.frame.width, height: view.frame.height - topLayoutGuide.length - bottomLayoutGuide.length)
        }
        scrollView.contentSize = CGSize(width: view.frame.width, height: 800)
    }
}
