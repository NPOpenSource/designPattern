//
//  Persion.h
//  行为型设计模式-迭代器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Iterator.h"
@interface Persion : NSObject
@property (nonatomic,strong) id<Iterator> appleIterator;

@end
