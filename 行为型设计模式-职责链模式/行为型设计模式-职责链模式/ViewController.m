//
//  ViewController.m
//  行为型设计模式-职责链模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "ErrorLogger.h"
#import "DebugLogger.h"
#import "ConsloleLogger.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AbstractLogger * logger = [[ConsloleLogger alloc]initWithLevel:1];
    AbstractLogger * logger2 = [[DebugLogger alloc]initWithLevel:2];
 AbstractLogger * logger3 = [[ErrorLogger alloc]initWithLevel:3];
    logger.nextLogger= logger2;
    logger2.nextLogger = logger3;
    
    [logger printLog:2 message:@"天天向上"];
    [logger printLog:1 message:@"没有错误"];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
