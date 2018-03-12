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
        
        self.title.layer.borderWidth = 1
        self.title.layer.borderColor = UIColor.white.cgColor
        self.title.textAlignment = .center
        self.addSubview(self.title)
        
        
        self.addSubview(personal_item)
        
        
        
        self.addSubview(company_item)
        
        
    }
    
    func setcontent1(_ title : String ,_ text : String , _ text2 : String) {
        self.title.text = title
        personal_item.set_text1(text)
        company_item.set_text1(text2)
    }
    
    func setcontent(_ title : String , _ person_rate : Float , _ company_rate : Float , _ total_income : Float) {
        self.title.text = title
        personal_item.set_rate(person_rate, total_income)
        company_item.set_rate(company_rate, total_income)
    }
    
    
    func autolayout_func1() {
        personal_item.autolayout_text1()
        company_item.autolayout_text1()
        item_autolayout()
    }
    
    func autolayout_func() {
        personal_item.autolayout_func()
        company_item.autolayout_func()
        item_autolayout()
        
        
    }
    
    
    func item_autolayout() {
        self.title.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.bottom.equalTo(self.snp.bottom)
            maker.left.equalTo(self.snp.left)
            maker.right.equalTo(self.snp.right)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.2)
            maker.height.equalTo(self.snp.height)
        }
        
        self.personal_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.bottom.equalTo(self.snp.bottom)
            maker.left.equalTo(self.title.snp.right)
            maker.right.equalTo(self.company_item.snp.left)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
        
        self.company_item.snp.makeConstraints { (maker) in
            maker.bottom.equalTo(self.snp.bottom)
            maker.top.equalTo(self.snp.top)
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
