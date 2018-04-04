//
//  FindNewStarts.h
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StartsA.h"
#import "StartsB.h"
@protocol FindNewStarts <NSObject>
-(void)findStartsA:(id<StartsA>)start;
-(void)findStartsB:(id<StartsB>)start;
-(void)show;
@end
