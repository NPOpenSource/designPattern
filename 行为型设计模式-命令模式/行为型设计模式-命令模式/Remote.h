//
//  Remote.h
//  行为型设计模式-命令模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
@interface Remote : NSObject

-(void)setCommand:(id<Command>)command;
-(void)invokeCommand;
@end
