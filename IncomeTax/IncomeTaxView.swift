//
//  IncomeTaxView.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/5.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit
import SnapKit
class IncomeTaxView: UIView {
    
    let setting_button : UIButton = UIButton()
    let gross_salary_label : UILabel = UILabel()
    let gross_salary_textField : UITextField = UITextField()
    
    let location_city : UILabel = UILabel()
    let location_city_textField : UITextField = UITextField()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame )
        
        
        self.addSubview(self.gross_salary_label)
        self.addSubview(self.gross_salary_textField)
        
        self.addSubview(self.location_city)
        self.addSubview(self.location_city_textField)
        
        self.autolayout_func()
    }
    
   
    
    func autolayout_func() {
        self.gross_salary_label.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left).offset(10)
            maker.top.equalTo(self.snp.top).offset(100)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        
        self.gross_salary_textField.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.gross_salary_label.snp.left).offset(10)
            maker.top.equalTo(self.gross_salary_label.snp.top)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        
        self.location_city.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left).offset(10)
            maker.top.equalTo(self.gross_salary_label.snp.top).offset(30)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        
        self.location_city_textField.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.location_city.snp.left).offset(10)
            maker.top.equalTo(self.location_city.snp.top)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
