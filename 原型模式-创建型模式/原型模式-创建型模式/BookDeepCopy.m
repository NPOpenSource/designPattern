//
//  BookDeepCopy.m
//  原型模式-创建型模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "BookDeepCopy.h"

@implementation BookDeepCopy
- (instancetype)initWithBookName:(NSString *)name author:(NSString *)author
{
    self = [super init];
    if (self) {
        self.name = name;
        self.auther =author;
    }
    return self;
}

-(id)mutableCopyWithZone:(NSZone *)zone{
    BookDeepCopy * deep=[[BookDeepCopy alloc]initWithBookName:self.name author:self.auther];
    return deep;
}



-(void)print{
    NSLog(@"start");
    NSLog(@"书的名：%@ 书的作者： %@",self.name,self.auther);
    NSLog(@"end");
}
@end
