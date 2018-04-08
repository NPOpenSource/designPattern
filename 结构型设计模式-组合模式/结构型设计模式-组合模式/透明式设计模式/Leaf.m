//
//  Leaf.m
//  结构型设计模式-组合模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf
-(void)add:(Component *)component{
    NSLog(@"can not add a component to a leaf.");
}

-(void)remove:(Component *)component{
    NSLog(@"can not remove a component to a leaf");
}
-(void)display:(int)level{
    NSLog(@"- %d %@",level,self.name);
}
@end
