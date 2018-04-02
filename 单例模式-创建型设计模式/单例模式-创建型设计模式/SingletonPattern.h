//
//  SingletonPattern.h
//  单例模式-创建型设计模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonPattern : NSObject
+(SingletonPattern *)shareSingletonPatternManager;

-(void)print;

@end
