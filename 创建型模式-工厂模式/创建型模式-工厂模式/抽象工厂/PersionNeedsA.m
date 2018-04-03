//
//  PersionNeedsA.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "PersionNeedsA.h"
#import "AudioA.h"
#import "MicrophoneA.h"
@implementation PersionNeedsA
-(id<audio>)getAudio{
    return [AudioA new];
}

-(id<Microphone>)getMicrophone{
    return [MicrophoneA new];
}
@end
