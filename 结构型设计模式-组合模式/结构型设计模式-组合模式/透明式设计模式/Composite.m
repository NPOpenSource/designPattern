//
//  Composite.m
//  结构型设计模式-组合模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Composite.h"
@interface Composite()
@property (nonatomic,strong) NSMutableArray *children;
@end
@implementation Composite
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.children = [NSMutableArray array];
    }
    return self;
}
-(void)add:(Component *)component{
    [self.children addObject:component];
}

-(void)remove:(Component *)component{
    [self.children removeObject:component];
}
-(void)display:(int)level{
    NSLog(@"- %d %@",level,self.name);
    for (Component * component in self.children) {
        [component display:level +2];
    }
}
@end
