//
//  ButtonEventNewView.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/4.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ButtonEventNewView.h"
@interface ButtonEventNewView()
@property (nonatomic,strong) id<MediaterProtocol> mediater;
@end
@implementation ButtonEventNewView

- (instancetype)initWithFrame:(CGRect)frame mediator:(id<MediaterProtocol>)mediator
{
    self = [super initWithFrame:frame];
    if (self) {
        self.mediater = mediator;
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
    [self.mediater buttonEvent];
}
@end
