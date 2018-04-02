//
//  BookShallowCopy.m
//  原型模式-创建型模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "BookShallowCopy.h"
@interface BookShallowCopy()
@property (nonatomic,strong,readwrite) NSString * name;
@property (nonatomic,strong,readwrite) NSString * auther;
@end

@implementation BookShallowCopy
- (instancetype)initWithBookName:(NSString *)name author:(NSString *)author
{
    self = [super init];
    if (self) {
        self.name = name;
        self.auther =author;
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    return self;
}


-(void)print{
    NSLog(@"start");
    NSLog(@"书的名：%@ 书的作者： %@",self.name,self.auther);
    NSLog(@"end");
}
@end
