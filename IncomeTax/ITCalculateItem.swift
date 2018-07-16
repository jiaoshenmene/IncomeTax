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
        self.rate_label.backgroundColor = UIColor.clear
        self.rate_label.textAlignment = .center
        
        self.rate_label.layer.borderWidth = 0.5
        self.rate_label.layer.borderColor = UIColor.white.cgColor
        
        self.amount_label.text = "654"
        self.amount_label.backgroundColor = UIColor.clear
        self.amount_label.textAlignment = .center
        
        self.amount_label.layer.borderWidth = 0.5
        self.amount_label.layer.borderColor = UIColor.white.cgColor
        
        self.addSubview(self.rate_label)
        self.addSubview(self.amount_label)
        
    }
    
    func set_text1(_ text : String) {
        self.rate_label.text = text
    }
    
    func set_text2(_ text : String , _ text1 : String) {
        self.rate_label.text = text
        self.amount_label.text = text1
    }
    
    func set_rate(_ rate : Float , _ total_income : Float) {
        self.rate_label.text = String.init(format: "%.1f%", rate)
        self.amount_label.text = String.init(format: "%.1f", ITCalulateModel.rate_calulate(rate, total_income))
        
    }
    
    func autolayout_text1() {
        self.rate_label.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.left.equalTo(self.snp.left)
            maker.right.equalTo(self.snp.right)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(self.snp.height)
        }
    }
    
    func autolayout_func() {
        self.rate_label.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.leading.equalTo(self.snp.leading)
            maker.trailing.equalTo(self.amount_label.snp.leading)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
        
        self.amount_label.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.leading.equalTo(self.rate_label.snp.trailing)
            maker.trailing.equalTo(self.snp.trailing)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.6)
            maker.height.equalTo(self.snp.height)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
