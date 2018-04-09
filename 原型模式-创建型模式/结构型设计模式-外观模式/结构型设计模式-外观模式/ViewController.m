//
//  ViewController.m
//  结构型设计模式-外观模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Patient.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Receptionist * receptionist= [Receptionist new];
   Patient * patients= [[Patient alloc]init];
    patients.receptionist =receptionist;
    [patients.receptionist seeDoctor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
