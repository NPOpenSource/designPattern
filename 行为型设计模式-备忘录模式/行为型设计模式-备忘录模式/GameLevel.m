//
//  GameLevel.m
//  行为型设计模式-备忘录模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "GameLevel.h"
@interface GameLevel()
@property (nonatomic,strong) NSMutableArray *mementos;
@end
@implementation GameLevel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mementos = [NSMutableArray new];
    }
    return self;
}
-(void)add:(Memento*)memento{
    [self.mementos addObject:memento];
}
-(Memento *)get:(NSInteger)index{
    if (index<self.mementos.count) {
        return [self.mementos objectAtIndex:index];
    }
    return 0;
}

@end
