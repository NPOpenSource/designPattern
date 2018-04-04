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
#import "Xiaoming.h"
#import "XuJIaoStart.h"
#import "XiaoHei.h"
#import "XuJiaoNewStart.h"
#import "ForumObject.h"
#import "ThreadObject.h"
#import "ForumNewObject.h"
#import "ButtonEventView.h"
#import "ButtonEventNewView.h"
#import "Mediater.h"
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

///接口隔离原则
-(void)ISP{
//    id<FindStarts> xiaoming = [Xiaoming new];
//     id<Starts> xujiao = [XuJIaoStart new];
//    [xiaoming findStarts:xujiao];
//    [xiaoming show];
    
    id<FindNewStarts> xiaohei = [XiaoHei new];
    XuJiaoNewStart * xujiao = [XuJiaoNewStart new];
    [xiaohei findStartsB:xujiao];
    [xiaohei findStartsA:xujiao];
    [xiaohei show];
    
}
///单一职责原则
-(void)CARP{
//    id<Forum> forumObject = [ForumObject new];
//    ThreadObject * threadobject = [ThreadObject new];
//    threadobject.name =@"单一职责原则";
//    [forumObject addThread:threadobject];
//    [forumObject addReplayMessage];
    id<ForumNew> forumObject= [ForumNewObject new];
    ThreadObject * threadobject = [ThreadObject new];
    threadobject.name =@"单一职责原则";
    [forumObject addThread:threadobject];
    [threadobject addReplayMessage];
    
}

-(UILabel *)getLabel{
    static int i=0;
    i++;
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, i*60, self.view.bounds.size.width, 50)];
    label.backgroundColor = [UIColor blueColor];
    label.textColor=[UIColor blackColor];
    [self.view addSubview:label];
    return label;
}

///迪米特法则
-(void)PLK{
    
//    ButtonEventView* button = [[ButtonEventView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 50) Label1:[self getLabel] Label2:[self getLabel] Label3:[self getLabel]];
//    [self.view addSubview:button];
    
    Mediater * mediater = [[Mediater alloc]initWithLabel1:[self getLabel] Label2:[self getLabel] Label3:[self getLabel]];
    ButtonEventNewView * button = [[ButtonEventNewView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 50) mediator:mediater];
    [self.view addSubview:button];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self openClose];
//    [self LSP];
//    [self DIP];
//    [self ISP];
//    [self CARP];
    [self PLK];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
