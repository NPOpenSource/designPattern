//
//  ViewController.m
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "AccountBook.h"
#import "IncomeBill.h"
#import "ConsumeBill.h"
#import "Boss.h"
#import "CAP.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AccountBook * accountBook= [AccountBook new];
    IncomeBill * bill = [IncomeBill new];
    bill.item=@"卖广告";
    bill.amount = 10000;
    [accountBook addBill:bill];
    bill = [IncomeBill new];
    bill.item=@"卖商品";
    bill.amount = 20000;
    [accountBook addBill:bill];

    ConsumeBill *consume = [ConsumeBill new];
    consume.item = @"工资";
    consume.amount = 1000;
    [accountBook addBill:consume];

    consume = [ConsumeBill new];
    consume.item = @"材料费";
    consume.amount = 2000;
    [accountBook addBill:consume];
    
    
    Boss * boss = [Boss new];
    [accountBook show:boss];
    CAP * cap = [CAP new];
    [accountBook show:cap];
    
    NSLog(@"收入：%lf 支出： %lf",boss.totalIncome,boss.totalConsume);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
