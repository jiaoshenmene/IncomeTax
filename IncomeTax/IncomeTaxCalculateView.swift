//
//  IncomeTaxCalculateView.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/5.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit


class IncomeTaxCalculateView: UIView , IncomeTaxCalculateViewConstraints{
    
    
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
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
