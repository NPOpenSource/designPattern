//
//  Iterator.h
//  行为型设计模式-迭代器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>
-(void)setIteratorArr:(NSArray*)array;
-(BOOL)hasNext;
-(id)next;
@end
