//
//  ViewController.m
//  结构型设计模式-装饰着模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "SimpleCoffce.h"
#import "SugarDecrator.h"
#import "MilkFoamDecrator.h"
#import "MilkPriceDecorator.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    id <Coffce> coffce = [SimpleCoffce new];
    coffce= [[SugarDecrator alloc]initWithCoffce:coffce];
    coffce = [[MilkFoamDecrator alloc]initWithCoffce:coffce];
    coffce = [[MilkPriceDecorator alloc]initWithCoffce:coffce];
    float price = [coffce getPrice];
    NSString * name = [coffce getName];
    NSLog(@"%@ %lf" ,name,price);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
