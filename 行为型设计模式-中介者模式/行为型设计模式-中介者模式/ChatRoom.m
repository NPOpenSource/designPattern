//
//  ChatRoom.m
//  行为型设计模式-中介者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ChatRoom.h"

@implementation ChatRoom
+(void)showMessage:(User*)user Message:(NSString*)message{
    NSLog(@"用户：%@ 发送消息：%@",user.name,message);
}
@end
