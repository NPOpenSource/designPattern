//
//  LeafSafe.m
//  结构型设计模式-组合模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "LeafSafe.h"

@implementation LeafSafe
-(void)display:(int)level{
    NSLog(@"- %d %@",level,self.name);
}
@end
