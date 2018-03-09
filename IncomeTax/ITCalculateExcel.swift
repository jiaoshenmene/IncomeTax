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
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       
        yanglao_item.setcontent("养老", 8, 19, 10000)
        yanglao_item.backgroundColor = UIColor.red
        self.addSubview(yanglao_item)
        yanglao_item.autolayout_func()
        
        
        
    }
    
    func autolayout_func() {
        yanglao_item.snp.makeConstraints { (maker) in
            maker.top.equalTo(self.snp.top)
            maker.left.equalTo(self.snp.left).offset(space_x)
            maker.right.equalTo(self.snp.right).offset(-space_x)
            maker.width.lessThanOrEqualTo(self.snp.width)
            maker.height.equalTo(yiliao_item).multipliedBy(1)
        }
        
        
        
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
