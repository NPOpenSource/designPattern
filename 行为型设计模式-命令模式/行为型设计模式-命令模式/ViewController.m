//
//  ViewController.m
//  行为型设计模式-命令模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "OpenTV.h"
#import "CloseTV.h"
#import "Remote.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TV * tv= [TV new];
    Remote * remote = [Remote new];
    OpenTV *openTV = [OpenTV new];
    openTV.tv =tv;
    CloseTV * closeTV = [CloseTV new];
    closeTV.tv = tv;
    [remote setCommand:openTV];
    [remote invokeCommand];
    [remote setCommand:closeTV];
    [remote invokeCommand];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
