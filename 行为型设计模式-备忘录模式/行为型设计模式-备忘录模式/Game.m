//
//  Game.m
//  行为型设计模式-备忘录模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Game.h"

@implementation Game

-(Memento *)saveStateToMemento{
    Memento * me=[Memento new];
    me.level = self.level;
    return me;
}

-(void)getStateFromMemento:(Memento*)memento{
    self.level = memento.level;
}

@end
