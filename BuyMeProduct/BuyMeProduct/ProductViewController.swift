//
//  ProductViewController.swift
//  BuyMeProduct
//
//  Created by Nikhil Dange on 28/02/19.
//  Copyright © 2019 learn. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    // IBOutlet, IBAction are macros to denote variable & method can used by interface builder to link to ui elements.

    @IBOutlet var productImageView: UIImageView!
    @IBOutlet var productNameLabel: UILabel!

    // why var, not let?
    // IBOutlet marked properties are properties of viewcontroller connected using interface builder. This properties are connected to interface element during actual application runtime.
    // It firstly creates a viewcontroller using init without connecting any interface element, get connected later stage. so var, no let.
    // They are implicitly imwrapped optionals to not make properties cumbersome to use.
    // https://stackoverflow.com/questions/46893514/why-cant-an-iboutlet-be-assigned-let-instead-of-var-in-swift
    
    var product: Product? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productNameLabel.text = product?.name
        if let imageName = product?.imageName {
            productImageView.image = UIImage(named: imageName)
        }
    }
    
    @IBAction func didTapAtAddToCart(_ sender: AnyObject) {
        print("Added to cart.")
    }
    
    // Any : represent an instance of any type [reference & value]
    // AnyObject : represent an instance of only reference type [class]
    // String, Array, Dict, Int are not classes, so use any
    // https://medium.com/@mimicatcodes/any-vs-anyobject-in-swift-3-b1a8d3a02e00
}

