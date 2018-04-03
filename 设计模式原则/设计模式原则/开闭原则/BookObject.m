//
//  BookObject.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "BookObject.h"

@interface BookObject()
@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString * author;
@property (nonatomic,assign) float price;
@end
@implementation BookObject

-(instancetype)initWithName:(NSString *)name price:(float)price author:(NSString *)author{
    if (self = [super init]) {
        self.name = name;
        self.price = price;
        self.author = author;
    }
    return self;
}

-(NSString *)getName{
    return self.name;
}

-(float)getPrice{
    return self.price;
}

-(NSString *)getAuthor{
    return self.author;
}

//-(float)getOffPrice{
//    if (self.price >40) {
//        return 0.8*self.price;
//    }
//    return self.price;
//}

-(NSString *)description{
    NSLog(@"书的名字 %@,当前买卖价格:%f,书的作者%@",[self getName],[self getPrice],[self getAuthor]);
    return nil;
}

@end
