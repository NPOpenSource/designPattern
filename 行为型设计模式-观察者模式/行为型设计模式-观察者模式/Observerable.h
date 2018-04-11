//
//  Observerable.h
//  行为型设计模式-观察者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
@protocol Observerable <NSObject>
-(void)registerObserver:(id<Observer>)observer;
-(void)removeObserver:(id<Observer>)observer;
-(void)notifyObserver;
@end
