//
//  ITCalulateModel.swift
//  IncomeTax
//
//  Created by 杜甲 on 2018/3/9.
//  Copyright © 2018年 杜甲. All rights reserved.
//

import Foundation

class ITCalulateModel : NSObject {
    override init() {
        super.init()
        
    }
    
    
    class func rate_calulate(_ rate : Float , _ amount : Float) -> Float {
        return rate * amount / 100
    }
}
