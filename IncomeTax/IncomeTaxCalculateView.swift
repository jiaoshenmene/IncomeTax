//
//  IncomeTaxCalculateView.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/5.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit


class IncomeTaxCalculateView: UIView {
    
    
    let title : UILabel = UILabel()
    let personal_item : ITCalculateItem = ITCalculateItem()
    let company_item : ITCalculateItem = ITCalculateItem()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.addSubview(self.title)
        
//        let item = ITCalculateItem.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 100))
        personal_item.set_rate(6, 10000)
        self.addSubview(personal_item)
        personal_item.autolayout_func()
        
        company_item.set_rate(6, 10000)
        self.addSubview(company_item)
        company_item.autolayout_func()
        
    }
    
    func autolayout_func() {
        self.title.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left)
            maker.right.equalTo(self.snp.right)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.2)
            maker.height.equalTo(self.snp.height)
        }
        
        self.personal_item.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.title.snp.right)
            maker.right.equalTo(self.company_item.snp.left)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
        
        self.company_item.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.personal_item.snp.right)
            maker.right.equalTo(self.snp.right)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
