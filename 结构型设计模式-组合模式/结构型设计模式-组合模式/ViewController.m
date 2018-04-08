//
//  ViewController.m
//  结构型设计模式-组合模式
//
//  Created by 温杰 on 2018/4/8.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Leaf.h"
#import "Composite.h"
#import "LeafSafe.h"
#import "CompositeSafe.h"
@interface ViewController ()

@end

@implementation ViewController
///安全设计模式
-(void)test2{
    CompositeSafe * root = [[CompositeSafe alloc]initWithName:@"root"];

    [root add:[[LeafSafe alloc]initWithName:@"Leaf A in Root"]];
    [root add:[[LeafSafe alloc]initWithName:@"Leaf B in Root"]];

    
    CompositeSafe * branchX = [[CompositeSafe alloc]initWithName:@"branch x in root"];;
    CompositeSafe * branchY = [[CompositeSafe alloc]initWithName:@"branch y in root"];;

    [root add:branchX];
    [root add:branchY];
    
    [branchX add:[[LeafSafe alloc]initWithName:@"Leaf  in branchA"]];

    CompositeSafe * branchZ = [[CompositeSafe alloc]initWithName:@"branch z in branch X"];;
    [branchX add:branchZ];
    
    [branchY add:[[LeafSafe alloc]initWithName:@"Leaf  in branch Y"]];
    [branchZ add:[[LeafSafe alloc]initWithName:@"Leaf  in branch z"]];

    [root display:1];
}

///透明设计模式
-(void)test1{
    Component * root = [Composite new];
    root.name =@"root";
    Component * a = [Leaf new];
    a.name = @"Leaf in Root";
    [root add:a];
    Component * b = [Leaf new];
    b.name = @"Leaf in Root";
    [root add:b];
    
    Component * branchX = [Composite new];
    branchX.name=@"branch x in root";
    [root add:branchX];
    
    Component * branchY = [Composite new];
    branchY.name=@"branch y in root";
    [root add:branchY];
    
    Component * leafA = [Leaf new];
    leafA.name = @"leaf  in Branch X";
    [branchX add:leafA];
    
    Component * branchZ = [Composite new];
    branchZ.name = @"branch z in Branch X";
    [branchX add:branchZ];
    
    Component * leafY = [Leaf new];
    leafY.name = @"leaf in Branch y";
    [branchY add:leafY];
    
    Component * leafz = [Leaf new];
    leafz.name = @"leaf in Branch z";
    [branchZ add:leafz];
    [root display:1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test1];
    [self test2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
