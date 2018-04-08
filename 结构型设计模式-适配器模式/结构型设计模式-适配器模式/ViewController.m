//
//  ViewController.m
//  结构型设计模式-适配器模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "CPower.h"
#import "CObjectPower.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///类对象适配
    [[CPower new] twoStep];
    ///对象适配
    [[CObjectPower new]twoStep];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
