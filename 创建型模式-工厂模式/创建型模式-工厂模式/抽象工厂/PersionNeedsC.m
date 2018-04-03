//
//  PersionNeedsC.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "PersionNeedsC.h"
#import "AudioA.h"
#import "MicrophoneB.h"
@implementation PersionNeedsC
-(id<Microphone>)getMicrophone{
    return [MicrophoneB new];
}

-(id<audio>)getAudio{
    return [AudioA new];
}

@end
