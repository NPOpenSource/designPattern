//
//  BookDiscountObject.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "BookDiscountObject.h"

@implementation BookDiscountObject
-(float)getPrice{
    float price =[super getPrice];
    if (price>40) {
        price = 0.8*40;
    }
    return price;
}
@end
