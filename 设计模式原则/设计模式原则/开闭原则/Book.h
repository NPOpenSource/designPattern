//
//  Book.h
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Book <NSObject>
-(NSString *)getName;
-(float)getPrice;
-(NSString *)getAuthor;

//-(float)getOffPrice;

@end
