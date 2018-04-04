//
//  Mediater.h
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "MediaterProtocol.h"
@interface Mediater : NSObject<MediaterProtocol>
- (instancetype)initWithLabel1:(UILabel *)label1 Label2:(UILabel *)label2 Label3:(UILabel*)label3;
@end
