//
//  User.m
//  行为型设计模式-观察者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "User.h"

@implementation User
-(void)update:(NSString *)message{
    NSLog(@"%@ 收到消息 %@",self,message);
}
@end
