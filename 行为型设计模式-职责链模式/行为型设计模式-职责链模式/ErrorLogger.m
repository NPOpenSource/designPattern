//
//  ErrorLogger.m
//  行为型设计模式-职责链模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ErrorLogger.h"

@implementation ErrorLogger
-(void)writeLog:(NSString *)message
{
    NSLog(@"Error Console::Logger: %@",message);
}
@end
