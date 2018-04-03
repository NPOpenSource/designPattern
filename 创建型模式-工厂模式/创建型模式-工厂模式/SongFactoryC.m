//
//  SongFactoryC.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SongFactoryC.h"
#import "SongC.h"
@implementation SongFactoryC
-(id<Song>)getSong{
    return [SongC new];
}
@end
