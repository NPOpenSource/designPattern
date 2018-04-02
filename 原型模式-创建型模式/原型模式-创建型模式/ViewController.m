//
//  ViewController.m
//  原型模式-创建型模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookDeep.h"
#import "BookDeepCopy.h"
#import "BookShallowCopy.h"
@interface ViewController ()

@end


@implementation ViewController

-(void)shallowcopy{
    Book * book = [Book new];
    book.name = @"oc";
    book.auther =@"刘艳";
    [book print];
    Book* book2 = [book copy];
    [book2 print];
    book2.name = @"swift";
    [book2 print];
    [book print];
}

-(void)deepCopy{
    BookDeep * book = [BookDeep new];
    book.name = @"oc";
    book.auther =@"刘艳";
    [book print];
    BookDeep* book2 = [book copy];
    [book2 print];
    book2.name = @"swift";
    [book2 print];
    [book print];
}

//规范的浅拷贝
-(void)shallowCopyModel{
    BookShallowCopy * shallowCopy=[[BookShallowCopy alloc]initWithBookName:@"oc" author:@"刘艳"];
    [shallowCopy print];
    ///用的是copy 而不是mutablecopy
    BookShallowCopy * shallowCopy1=[shallowCopy copy];
    [shallowCopy1 print];
///不可以修改shallowCopy 的任何属性
//    shallowCopy1.name= @"swift";
    [shallowCopy print];
}

-(void)deepCopyModel{
    BookDeepCopy * shallowCopy=[[BookDeepCopy alloc]initWithBookName:@"oc" author:@"刘艳"];
    [shallowCopy print];
    ///用的是mutableCopy 而不是copy 可以改变对象
    BookDeepCopy * shallowCopy1=[shallowCopy mutableCopy];
    [shallowCopy1 print];
    ///随便修改，但是不会影响到shallowCopy 对象
    shallowCopy1.name= @"swift";
     [shallowCopy1 print];
    [shallowCopy print];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self shallowcopy];
    NSLog(@"deepcopy");
    [self deepCopy];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
