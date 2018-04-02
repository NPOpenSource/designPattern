//
//  Book.m
//  原型模式-创建型模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Book.h"

@implementation Book


-(id)copyWithZone:(NSZone *)zone{
    
    return self;
}


-(void)print{
    NSLog(@"start");
    NSLog(@"deep 书的名：%@ 书的作者： %@",self.name,self.auther);
    NSLog(@"end");
}

@end
