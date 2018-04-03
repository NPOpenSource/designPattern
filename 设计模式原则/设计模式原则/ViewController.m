//
//  ViewController.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "BookDiscountObject.h"
#import "Solider.h"
#import "HandGun.h"
#import "MachineGun.h"
#import "Rifle.h"
#import "XiaoMing.h"
#import "NovelNew.h"
#import "XiaoMingNew.h"
#import "LiteraryClassicNew.h"
@interface ViewController ()

@end

@implementation ViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
///开闭原则
-(void)openClose{
    ///正常卖书
    id<Book> book = [[BookObject alloc]initWithName:@"《笑傲江湖》" price:50 author:@"金庸"];
    [book description];
    ///打折销售
    book = [[BookDiscountObject alloc]initWithName:@"《笑傲江湖》" price:50 author:@"金庸"];
    [book description];
    
}

///里氏代换原则
-(void)LSP{
    Solider * solider=[[Solider alloc]init];
    id<Gun> gun=[HandGun new];
    [solider setGun:gun];
    [solider killEnemy];
    gun=[Rifle new];
    [solider setGun:gun];
    [solider killEnemy];
    gun=[MachineGun new];
    [solider setGun:gun];
    [solider killEnemy];
    AUG * aug = [AUG new];
    [solider killEnemy:aug];
//    [solider killEnemy:gun];
}

///依赖倒置原则
-(void)DIP{
//    LiteraryClassic * literary=[LiteraryClassic new];
//    XiaoMing * xiaoming=[XiaoMing new];
//    [xiaoming read:literary];
//    Novel * novel = [Novel new];
//    [xiaoming readnovel:novel];
    id<IReader>  ireader=[XiaoMingNew new];
    id<IRead> read = [NovelNew new];
    [ireader read:read];
    read=[LiteraryClassicNew new];
    [ireader read:read];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self openClose];
//    [self LSP];
    [self DIP];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
