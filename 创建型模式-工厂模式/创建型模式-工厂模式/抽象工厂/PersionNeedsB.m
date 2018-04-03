//
//  PersionNeedsB.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "PersionNeedsB.h"
#import "AudioB.h"
#import "MicrophoneB.h"
@implementation PersionNeedsB
-(id<audio>)getAudio{
    return [AudioB new];
}

-(id<Microphone>)getMicrophone{
    return [MicrophoneB new];
}
@end
