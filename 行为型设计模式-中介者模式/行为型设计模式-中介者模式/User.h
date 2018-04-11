//
//  User.h
//  行为型设计模式-中介者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic,strong) NSString * name;
-(void)sendMessage:(NSString *)message;
@end
