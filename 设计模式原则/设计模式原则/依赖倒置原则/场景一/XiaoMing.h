//
//  XiaoMing.h
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LiteraryClassic.h"
#import "Novel.h"
@interface XiaoMing : NSObject
-(void)read:(LiteraryClassic *)literaryClassic;
-(void)readnovel:(Novel*)novel;
@end
