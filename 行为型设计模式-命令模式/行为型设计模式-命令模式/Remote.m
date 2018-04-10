//
//  Remote.m
//  行为型设计模式-命令模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Remote.h"
@interface Remote()
@property (nonatomic,strong) id<Command> command;
@end
@implementation Remote

-(void)setCommand:(id<Command>)command
{
    _command = command;
}

-(void)invokeCommand{
    [self.command execute];
}
@end
