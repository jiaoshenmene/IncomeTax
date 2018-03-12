//
//  ViewController.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/5.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.gray
        let view = IncomeTaxView.init(frame: CGRect.init(x: 0, y: 0, width: 400, height: 600))
        view.backgroundColor = UIColor.clear
        self.view.addSubview(view)
        view.autolayout_func()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

