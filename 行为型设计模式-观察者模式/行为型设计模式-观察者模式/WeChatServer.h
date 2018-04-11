//
//  WeChatServer.h
//  行为型设计模式-观察者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observerable.h"
@interface WeChatServer : NSObject<Observerable>
-(void)setMessage:(NSString *)message;
@end
