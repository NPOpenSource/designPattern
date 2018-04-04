//
//  ButtonEventNewView.h
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaterProtocol.h"
@interface ButtonEventNewView : UIView

- (instancetype)initWithFrame:(CGRect)frame mediator:(id<MediaterProtocol>)mediator;
@end
