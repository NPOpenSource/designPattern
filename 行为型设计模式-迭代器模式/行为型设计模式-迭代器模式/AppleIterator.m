//
//  AppleIterator.m
//  行为型设计模式-迭代器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "AppleIterator.h"

@interface AppleIterator()
@property (nonatomic,assign) int index;
@property (nonatomic,strong) NSMutableArray *array;
@end

@implementation AppleIterator

-(void)setIteratorArr:(NSArray *)array{
    self.array = array;
}


-(BOOL)hasNext{
    if (self.index<self.array.count) {
        return YES;
    }
    return NO;
}
-(id)next{
    if (self.hasNext) {
        return  self.array[self.index++];
    }
    return nil;
}
@end
