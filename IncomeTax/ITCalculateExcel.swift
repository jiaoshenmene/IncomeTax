//
//  ITCalculateExcel.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/9.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit


class ITCalculateExcel: UIView , ITCalculateExcelConstraints {
    
    let space_x = 5
    
    
    let yanglao_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    let yiliao_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    let shiye_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    let gongjijin_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    let geshui_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    let xiaoji_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    let shuihougz_item : IncomeTaxCalculateView = IncomeTaxCalculateView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        self.yanglao_item.setcontent("养老", 8, 19, 10000)
        self.yanglao_item.backgroundColor = UIColor.clear
        self.yanglao_item.layer.borderWidth = 0.5
        self.yanglao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(self.yanglao_item)
        
        
        self.yiliao_item.setcontent("医疗", 5, 10, 10000)
        self.yiliao_item.backgroundColor = UIColor.clear
        self.yiliao_item.layer.borderWidth = 0.5
        self.yiliao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(self.yiliao_item)
        
        
        
        shiye_item.setcontent("失业", 0.2, 0.8, 10000)
        shiye_item.backgroundColor = UIColor.clear
        self.yiliao_item.layer.borderWidth = 0.5
        self.yiliao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(shiye_item)
        
        
        gongjijin_item.setcontent("公积金", 12, 12, 10000)
        self.yiliao_item.layer.borderWidth = 0.5
        self.yiliao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(gongjijin_item)
        
        
        geshui_item.setcontent1("个税", "12","")
        self.addSubview(geshui_item)
        
     
        
        xiaoji_item.setcontent1("小计", "12","543")
    
        self.addSubview(xiaoji_item)
        
        
        shuihougz_item.setcontent1("税后工资", "12","")

        self.addSubview(shuihougz_item)
        
        
    }
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
