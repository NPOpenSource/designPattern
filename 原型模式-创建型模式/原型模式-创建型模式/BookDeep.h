//
//  BookDeep.h
//  原型模式-创建型模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookDeep : NSObject<NSCopying>
@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString * auther;
-(void)print;
@end
