//
//  ViewController.m
//  结构型设计模式-享元模式
//
//  Created by 温杰 on 2018/4/9.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "ConcreteFlyWeight.h"
#import "FlyweightFactory.h"
@interface ViewController ()

@end

@implementation ViewController
///复合享元模式
-(void)test2{
    FlyweightFactory * factory= [FlyweightFactory new];
    NSArray * aray=@[@1,@2,@3,@1,@3];
   id<FlyWeight> flyWeight= [factory factorys:aray];
    [flyWeight openation:@"Composite Call"];
    
    flyWeight =[factory factory:@1];
    [flyWeight openation:@"print one"];
}
//单纯享元模式
-(void)test1{
   FlyweightFactory * factory= [FlyweightFactory new];
   id<FlyWeight> flyweight= [factory factory:@1];
    [flyweight openation:@"print one"];
    flyweight= [factory factory:@2];
    [flyweight openation:@"print tow"];
    flyweight= [factory factory:@1];
    [flyweight openation:@"print three"];
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
