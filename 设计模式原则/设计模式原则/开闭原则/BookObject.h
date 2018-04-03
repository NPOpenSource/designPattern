//
//  BookObject.h
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
@interface BookObject : NSObject<Book>

- (instancetype)initWithName:(NSString *)name price:(float)price author:(NSString *)author NS_DESIGNATED_INITIALIZER;
@end
