//
//  AreaA.h
//  结构型设计模式-桥接模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Qiao.h"
@interface AreaA : NSObject
@property (nonatomic,strong) id <Qiao>qiao;
-(void)fromA;
@end
