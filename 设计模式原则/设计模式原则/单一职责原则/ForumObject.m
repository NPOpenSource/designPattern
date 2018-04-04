//
//  ForumObject.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ForumObject.h"

@interface ForumObject()
@property (nonatomic,strong) id<Thread> thread;
@end


@implementation ForumObject
-(void)addThread:(id<Thread>)thread{
    self.thread = thread;
}
-(void)addReplayMessage{
    [self.thread addReplayMessage];
}

@end
