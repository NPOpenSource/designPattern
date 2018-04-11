//
//  ViewController.m
//  行为型设计模式-观察者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "WeChatServer.h"
#import "User.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WeChatServer * server=  [WeChatServer new];
    User * userOne = [User new];
    User * userTwo = [User new];
    [server registerObserver:userOne];
    [server setMessage:@"博雅论坛"];
    [server registerObserver:userTwo];
    [server setMessage:@"博雅论坛最新消息"];
    [server removeObserver:userOne];
    [server setMessage:@"博雅论坛结束了"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
