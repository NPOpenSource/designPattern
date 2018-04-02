//
//  BookDeep.m
//  原型模式-创建型模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "BookDeep.h"

@implementation BookDeep
-(id)copyWithZone:(NSZone *)zone{
    BookDeep * deep=[[BookDeep allocWithZone:zone]init];
    deep.name=self.name;
    deep.auther = self.auther;
    return deep;
}

-(void)print{
    NSLog(@"start");
    NSLog(@"书的名：%@ 书的作者： %@",self.name,self.auther);
    NSLog(@"end");
}
@end
