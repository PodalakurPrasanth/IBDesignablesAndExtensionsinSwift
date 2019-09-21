//
//  ViewController.swift
//  IBDesignableAndExtensions
//
//  Created by Prashanth on 21/09/19.
//  Copyright © 2019 Vsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainView.roundCornersforPerticularSide([.topLeft,.bottomRight], [.layerMinXMinYCorner,.layerMaxXMaxYCorner], radius: 20)
        print(Date().getThisMonthStart()?.dateTostringConvetion() ?? "")
        print(Date().getThisMonthEnd()?.dateTostringConvetion() ?? "")
        
        //Prasanth

    }


}

