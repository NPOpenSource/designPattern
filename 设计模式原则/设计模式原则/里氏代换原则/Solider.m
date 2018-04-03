//
//  Solider.m
//  设计模式原则
//
//  Created by 温杰 on 2018/4/3.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Solider.h"

@interface Solider()
@property (nonatomic,strong) id<Gun> soliderGun;
@end
@implementation Solider
-(void)setGun:(id<Gun>)gun{
    self.soliderGun = gun;
}

-(void)killEnemy{
    [self.soliderGun shoot];
}
-(void)killEnemy:(AUG*)aug{
    [aug zoomOut];
    [aug shoot];
}

@end
