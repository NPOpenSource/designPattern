//
//  Mediater.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Mediater.h"
@interface Mediater()
@property (nonatomic,strong) UILabel  *label1;
@property (nonatomic,strong) UILabel  *label2;
@property (nonatomic,strong) UILabel  *label3;

@end

@implementation Mediater

- (instancetype)initWithLabel1:(UILabel *)label1 Label2:(UILabel *)label2 Label3:(UILabel*)label3
{
    self = [super init];
    if (self) {
        self.label1 = label1;
        self.label2=label2;
        self.label3=label3;
    }
    return self;
}

-(void)buttonEvent{
    self.label1.text = @"label1";
    self.label2.text = @"label2";
    self.label3.text = @"label3";
}
@end
