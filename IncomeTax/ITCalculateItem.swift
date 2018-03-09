//
//  ITCalculateItem.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/9.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit

class ITCalculateItem : UIView {
    
    let rate_label : UILabel = UILabel()
    let amount_label : UILabel = UILabel()
    
    
    
    
    override init(frame: CGRect) {
       
        super.init(frame: frame)
        
        self.rate_label.text = "124"
        self.rate_label.backgroundColor = UIColor.gray
        self.rate_label.textAlignment = .center
        
        self.amount_label.text = "654"
        self.amount_label.backgroundColor = UIColor.red
        self.amount_label.textAlignment = .center
        
        self.addSubview(self.rate_label)
        self.addSubview(self.amount_label)
        
    }
    
    func set_rate(_ rate : Float , _ total_income : Float) {
        self.rate_label.text = String.init(format: "%.1f%", rate)
        self.amount_label.text = String.init(format: "%.1f", ITCalulateModel.rate_calulate(rate, total_income))
        
    }
    
    func autolayout_func() {
        self.rate_label.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left)
            maker.right.equalTo(self.amount_label.snp.left)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
        
        self.amount_label.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.rate_label.snp.right)
            maker.right.equalTo(self.snp.right)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.6)
            maker.height.equalTo(self.snp.height)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
