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
    
    let title_label : UILabel = UILabel()
    
    let gross_salary_label : UILabel = UILabel()
    let gross_salary_textField : UITextField = UITextField()
    
    let location_city : UILabel = UILabel()
    let location_city_textField : UITextField = UITextField()
    let calculateExcel : ITCalculateExcel = ITCalculateExcel()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame )
        
        self.title_label.text = "个税计算器2018"
        self.title_label.textAlignment = .center
        self.addSubview(self.title_label)
        
        
        self.setting_button.setTitle("设置", for: .normal)
        self.setting_button.addTarget(self, action: #selector(setting_func), for: .touchUpInside)
        self.addSubview(self.setting_button)
        
        
        
        
        self.gross_salary_label.text = "税前工资"
        
        self.addSubview(self.gross_salary_label)
        self.addSubview(self.gross_salary_textField)
        
        self.location_city.text = "所在城市"
        self.addSubview(self.location_city)
        self.addSubview(self.location_city_textField)
        
        self.autolayout_func()
        
        self.calculateExcel.backgroundColor = UIColor.red
        self.addSubview(self.calculateExcel)
        self.calculateExcel.autolayout_func()
        
    }
    
   
    @objc func setting_func() {
        print("setting")
        
    }
    
    func autolayout_func() {
        
        self.setting_button.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left).offset(10)
            maker.top.equalTo(self.snp.top).offset(10)
            maker.width.equalTo(50)
            maker.height.equalTo(30)
        }
        
        self.title_label.snp.makeConstraints { (maker) in
            maker.centerX.equalTo(self.snp.centerX)
            maker.top.equalTo(self.snp.top).offset(10)
            maker.width.equalTo(self.snp.width)
            maker.height.equalTo(30)
        }
        
        self.gross_salary_label.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left).offset(10)
            maker.top.equalTo(self.setting_button.snp.top).offset(100)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        
        self.gross_salary_textField.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.gross_salary_label.snp.right).offset(3)
            maker.top.equalTo(self.gross_salary_label.snp.top)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        
        self.location_city.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.left).offset(10)
            maker.top.equalTo(self.gross_salary_label.snp.top).offset(60)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        
        self.location_city_textField.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.location_city.snp.right).offset(3)
            maker.top.equalTo(self.location_city.snp.top)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
        self.calculateExcel.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.snp.right).offset(3)
            maker.top.equalTo(self.location_city.snp.top)
            maker.width.equalTo(100)
            maker.height.equalTo(30)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
