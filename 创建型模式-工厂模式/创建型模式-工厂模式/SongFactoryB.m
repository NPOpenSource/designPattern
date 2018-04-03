//
//  SongFactoryB.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SongFactoryB.h"
#import "SongB.h"
@implementation SongFactoryB
-(id<Song>)getSong{
    return [SongB new];
}
@end
