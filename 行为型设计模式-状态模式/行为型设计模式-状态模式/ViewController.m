//
//  ViewController.m
//  行为型设计模式-状态模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Celling.h"
#import "BuyState.h"
#import "ShipmentState.h"
#import "ChoosingState.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Celling * celling = [Celling new];
    [celling choose];
    celling.state = [ChoosingState new];
    [celling choose];
    celling.state = [BuyState new];
    [celling buy];
    celling.state = [ShipmentState new];
    [celling shipment];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
