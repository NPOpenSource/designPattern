//
//  ViewController.m
//  行为型设计模式-模板方法模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "AMDComputer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Computer * computer = [AMDComputer new];
    [computer play];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
