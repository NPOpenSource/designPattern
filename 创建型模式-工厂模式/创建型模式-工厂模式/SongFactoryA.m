//
//  SongFactoryA.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SongFactoryA.h"
#import "SongA.h"
@implementation SongFactoryA
-(id<Song>)getSong{
    return [SongA new];
}
@end
