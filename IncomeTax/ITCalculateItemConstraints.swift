//
//  ITCalculateItemConstraints.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/7/16.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import UIKit

protocol ITConStraints  {
    func autolayout_func()
}

protocol ITCalculateItemConstraints : ITConStraints {
    
}

extension ITCalculateItemConstraints where Self : ITCalculateItem {
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
    
    func autolayout_text1() {
        self.rate_label.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.left.equalTo(self.snp.left)
            maker.right.equalTo(self.snp.right)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(self.snp.height)
        }
    }
    
}

protocol IncomeTaxCalculateViewConstraints {
    
}

extension IncomeTaxCalculateViewConstraints where Self : IncomeTaxCalculateView {
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
            maker.leading.equalTo(self.snp.leading)
            maker.trailing.equalTo(self.personal_item.snp.leading)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.2)
            maker.height.equalTo(self.snp.height)
        }
        
        self.personal_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.bottom.equalTo(self.snp.bottom)
            maker.leading.equalTo(self.title.snp.trailing)
            maker.trailing.equalTo(self.company_item.snp.leading)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
        
        self.company_item.snp.makeConstraints { (maker) in
            maker.bottom.equalTo(self.snp.bottom)
            maker.top.equalTo(self.snp.top)
            maker.leading.equalTo(self.personal_item.snp.trailing)
            maker.trailing.equalTo(self.snp.trailing)
            maker.width.lessThanOrEqualTo(self.snp.width).multipliedBy(0.4)
            maker.height.equalTo(self.snp.height)
        }
    }
}


protocol ITCalculateExcelConstraints {
    
}

extension ITCalculateExcelConstraints where Self : ITCalculateExcel {
    func autolayout_func() {
        yanglao_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.bottom.equalTo(self.yiliao_item.snp.top)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(self.yiliao_item.snp.height)
        }
        
        
        yiliao_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.yanglao_item.snp.bottom)
            maker.bottom.equalTo(self.shiye_item.snp.top)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(shiye_item.snp.height)
        }
        
        shiye_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.yiliao_item.snp.bottom)
            maker.bottom.equalTo(self.gongjijin_item.snp.top)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(gongjijin_item.snp.height)
        }
        
        gongjijin_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.shiye_item.snp.bottom)
            maker.bottom.equalTo(self.geshui_item.snp.top)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(geshui_item.snp.height)
        }
        
        geshui_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.gongjijin_item.snp.bottom)
            maker.bottom.equalTo(self.xiaoji_item.snp.top)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(xiaoji_item.snp.height)
        }
        
        xiaoji_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.geshui_item.snp.bottom)
            maker.bottom.equalTo(self.shuihougz_item.snp.top)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(shuihougz_item.snp.height)
        }
        
        shuihougz_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.xiaoji_item.snp.bottom)
            maker.bottom.equalTo(self.snp.bottom)
            maker.leading.equalTo(self.snp.leading).offset(space_x)
            maker.trailing.equalTo(self.snp.trailing).offset(-space_x)
            maker.width.lessThanOrEqualToSuperview()
            maker.height.equalTo(geshui_item.snp.height)
        }
        self.yanglao_item.autolayout_func()
        self.yiliao_item.autolayout_func()
        shiye_item.autolayout_func()
        gongjijin_item.autolayout_func()
        xiaoji_item.autolayout_func1()
        geshui_item.autolayout_func1()
        shuihougz_item.autolayout_func1()
    }
    
}


