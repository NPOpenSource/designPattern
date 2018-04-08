//
//  ViewController.m
//  创建型设计模式-建造者模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "DZCarBuilder.h"
#import "Director.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    id <Carbuilder> builder= [DZCarBuilder new];
    Director * director = [Director new];
  Car *car =  [director createCar:builder];
    [car description];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
