//
//  ViewController.m
//  单例模式-创建型设计模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "SingletonPattern.h"
#import "SingletonPatternTwo.h"
#import "SingletonPatternThree.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[SingletonPattern shareSingletonPatternManager] print];
    [[SingletonPatternTwo shareSingletonPatternManager] print];
    [[SingletonPatternThree shareSingletonPatternManager]print];
//    [[[SingletonPattern alloc]init] print];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
