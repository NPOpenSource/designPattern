//
//  ViewController.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
#import "SimpleHandle.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Calculator * calculator = [Calculator new];
    [calculator calculator:@"125+175+100-100"];
    int result= [calculator calculator];
    NSLog(@"result %d",result);
    
    SimpleHandle * simpleHandle = [[SimpleHandle alloc]init];
    [simpleHandle handleExpress:@"up move 5 and down run 10 and left move 5"];
    NSLog(@"result %@",[simpleHandle handle]);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
