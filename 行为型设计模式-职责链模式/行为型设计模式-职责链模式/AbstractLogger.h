//
//  AbstractLogger.h
//  行为型设计模式-职责链模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractLogger : NSObject
@property (nonatomic,assign) int  level;
@property (nonatomic,strong) AbstractLogger *nextLogger;
- (instancetype)initWithLevel:(int)level;
-(void)writeLog:(NSString *)message;
-(void)printLog:(int)level message:(NSString*)message;
@end
