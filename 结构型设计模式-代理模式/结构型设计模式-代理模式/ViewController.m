//
//  ViewController.m
//  结构型设计模式-代理模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Father.h"
#import "FatherNew.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)test2{
    id<BuySmoke> son =[Son new];
    FatherNew * father= [FatherNew new];
    [father addBuySmokeDelegate:son];
    [father buySmoke];
}

-(void)test1{
    id<BuySmoke> father= [Father new];
    [father buySmoke];
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    [self test1];
    [self test2];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
