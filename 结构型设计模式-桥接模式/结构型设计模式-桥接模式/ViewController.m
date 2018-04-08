//
//  ViewController.m
//  结构型设计模式-桥接模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "AreaB1.h"
#import "AreaA1.h"
#import "AreaA2.h"
#import "AreaB2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AreaA * A1 = [AreaA1 new];
    AreaA * A2 = [AreaA2 new];
    id<Qiao> B1 = [AreaB1 new];
    id<Qiao> B2 = [AreaB2 new];
    
    A1.qiao = B1;
    [A1 fromA];
    [A1.qiao targetB];
    A1.qiao = B2;
    [A1 fromA];
    [A1.qiao targetB];
    A2.qiao = B1;
    [A2 fromA];
    [A2.qiao targetB];
    A2.qiao = B2;
    [A2 fromA];
    [A2.qiao targetB];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
