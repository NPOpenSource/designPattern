//
//  ViewController.m
//  行为型设计模式-备忘录模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "Game.h"
#import "GameLevel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Game * game = [Game new];
    GameLevel * level= [GameLevel new];
    game.level = 3;
    [game saveStateToMemento];
    game.level = 4;
    [level add:[game saveStateToMemento]];
    game.level = 5;
    [level add:[game saveStateToMemento]];
    [game getStateFromMemento: [level get:0]];
   
    NSLog(@"获取第一次位置的state %d",game.level);
    [game getStateFromMemento: [level get:1]];
    
    NSLog(@"获取第二次位置的state %d",game.level);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
