//
//  Game.h
//  行为型设计模式-备忘录模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"
@interface Game : NSObject
@property (nonatomic,assign) int  level;
-(Memento *)saveStateToMemento;
-(void)getStateFromMemento:(Memento*)memento;
@end
