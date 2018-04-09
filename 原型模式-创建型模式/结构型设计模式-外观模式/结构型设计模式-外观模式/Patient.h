//
//  Patient.h
//  结构型设计模式-外观模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receptionist.h"
@interface Patient : NSObject
@property (nonatomic,strong) Receptionist *receptionist;
@end
