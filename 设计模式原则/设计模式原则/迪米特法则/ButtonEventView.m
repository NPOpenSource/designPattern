//
//  ButtonEventView.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ButtonEventView.h"
@interface ButtonEventView()
@property (nonatomic,strong) UILabel  *label1;
@property (nonatomic,strong) UILabel  *label2;
@property (nonatomic,strong) UILabel  *label3;

@end
@implementation ButtonEventView
- (instancetype)initWithFrame:(CGRect)frame Label1:(UILabel *)label1 Label2:(UILabel *)label2 Label3:(UILabel*)label3
{
    self = [super initWithFrame:frame];
    if (self) {
        self.label1 = label1;
        self.label2=label2;
        self.label3=label3;
        [self createUI];
    }
    return self;
}

-(void)createUI{
    UIButton * buton = [UIButton buttonWithType:UIButtonTypeCustom];
    buton.frame = CGRectMake(0, 0, self.bounds.size.width, 50);
    [buton setBackgroundColor:[UIColor redColor]];
    [buton addTarget:self action:@selector(buttonEvent) forControlEvents:UIControlEventTouchDown];
    [self addSubview:buton];
}

-(void)buttonEvent{
    self.label1.text = @"label1";
    self.label2.text = @"label2";
    self.label3.text = @"label3";
}
@end
