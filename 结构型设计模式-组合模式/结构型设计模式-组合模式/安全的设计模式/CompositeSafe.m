//
//  CompositeSafe.m
//  结构型设计模式-组合模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "CompositeSafe.h"
@interface CompositeSafe()
@property (nonatomic,strong) NSMutableArray *children;

@end
@implementation CompositeSafe
-(instancetype)initWithName:(NSString *)name{
    self= [super initWithName:name];
    if (self) {
        self.children = [NSMutableArray array];
    }
    return self;
}
-(void)add:(ComponentSafe *)component{
    [self.children addObject:component];
}
-(void)remove:(ComponentSafe *)component{
    [self.children removeObject:component];
}
-(void)display:(int)level{
    NSLog(@"- %d %@",level,self.name);
    for (ComponentSafe * component in self.children) {
        [component display:level +2];
    }
}


@end
