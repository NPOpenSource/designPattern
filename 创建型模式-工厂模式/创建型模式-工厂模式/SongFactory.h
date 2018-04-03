//
//  SongFactory.h
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SongA.h"
#import "SongB.h"
#import "SongC.h"
#import "Song.h"
typedef enum {
    SongAType,
    SongBType,
    SongCType
}SongType;

@interface SongFactory : NSObject
-(id<Song>)getSongType:(SongType)songType;
@end
