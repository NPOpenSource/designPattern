//
//  Persion.m
//  行为型设计模式-迭代器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Persion.h"
#import "AppleIterator.h"
@interface Persion()
@property (nonatomic,strong) NSMutableArray * apples;
@end
@implementation Persion
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.apples=[NSMutableArray array];
        for (int i=0; i<10; i++) {
            [self.apples addObject:@"apple"];
        }
        self.appleIterator = [AppleIterator new];
        [self.appleIterator setIteratorArr:self.apples];
    }
    return self;
}

@end
