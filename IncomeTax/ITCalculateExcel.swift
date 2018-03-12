//
//  ITCalculateExcel.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/9.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit


class ITCalculateExcel: UIView {
    
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
        self.yanglao_item.autolayout_func()
        
        self.yiliao_item.setcontent("医疗", 5, 10, 10000)
        self.yiliao_item.backgroundColor = UIColor.clear
        self.yiliao_item.layer.borderWidth = 0.5
        self.yiliao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(self.yiliao_item)
        self.yiliao_item.autolayout_func()
        
        
        shiye_item.setcontent("失业", 0.2, 0.8, 10000)
        shiye_item.backgroundColor = UIColor.clear
        self.yiliao_item.layer.borderWidth = 0.5
        self.yiliao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(shiye_item)
        shiye_item.autolayout_func()
        
        gongjijin_item.setcontent("公积金", 12, 12, 10000)
        self.yiliao_item.layer.borderWidth = 0.5
        self.yiliao_item.layer.borderColor = UIColor.white.cgColor
        self.addSubview(gongjijin_item)
        gongjijin_item.autolayout_func()
        
        geshui_item.setcontent1("个税", "12","")
        self.addSubview(geshui_item)
        geshui_item.autolayout_func1()
     
        
        xiaoji_item.setcontent1("小计", "12","543")
    
        self.addSubview(xiaoji_item)
        xiaoji_item.autolayout_func1()
        
        shuihougz_item.setcontent1("税后工资", "12","")

        self.addSubview(shuihougz_item)
        shuihougz_item.autolayout_func1()
        
    }
    
    func autolayout_func() {
        yanglao_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.bottom.equalTo(self.yiliao_item.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(self.yiliao_item.snp.height)
        }
        
        
        yiliao_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.yanglao_item.snp.bottom)
            maker.bottom.equalTo(self.shiye_item.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(yanglao_item.snp.height)
        }
        
        shiye_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.yiliao_item.snp.bottom)
            maker.bottom.equalTo(self.gongjijin_item.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(gongjijin_item.snp.height)
        }


        gongjijin_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.shiye_item.snp.bottom)
            maker.bottom.equalTo(self.geshui_item.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(yiliao_item.snp.height)
        }
        
        geshui_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.shiye_item.snp.bottom)
            maker.bottom.equalTo(self.xiaoji_item.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(gongjijin_item.snp.height)
        }
        
        xiaoji_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.geshui_item.snp.bottom)
            maker.bottom.equalTo(self.shuihougz_item.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(geshui_item.snp.height)
        }
        
        
        shuihougz_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.xiaoji_item.snp.bottom)
            maker.bottom.equalTo(self.snp.bottom)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(geshui_item.snp.height)
        }
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
