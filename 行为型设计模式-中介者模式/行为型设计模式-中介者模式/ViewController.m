//
//  ViewController.m
//  行为型设计模式-中介者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    User * userLI = [User new];
    userLI.name = @"晓丽";
    User * userMing = [User new];
    userMing.name=@"小明";
    [userLI sendMessage:@"小明好"];
    [userMing sendMessage:@"晓丽好"];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
