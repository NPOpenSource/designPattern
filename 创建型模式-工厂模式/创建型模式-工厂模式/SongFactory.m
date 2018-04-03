//
//  SongFactory.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "SongFactory.h"

@implementation SongFactory
-(id<Song>)getSongType:(SongType)songType{
    if (songType==SongAType) {
        return [SongA  new];
    }else if (songType==SongBType){
        return [SongB new];
    }else if (songType == SongCType){
        return [SongC new];
    }else{
        return nil;
    }
    return nil;
}
@end
