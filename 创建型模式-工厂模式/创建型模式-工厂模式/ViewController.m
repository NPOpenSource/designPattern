//
//  ViewController.m
//  创建型模式-工厂模式
//
//  Created by 温杰 on 2018/4/2.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ViewController.h"
#import "SongFactory.h"
#import "SongFactoryA.h"
#import "SongFactoryB.h"
#import "SongFactoryC.h"
#import "PersionNeedsA.h"
#import "PersionNeedsB.h"
#import "PersionNeedsC.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)simpleFactory{
    SongFactory * factory=[[SongFactory alloc]init];
    id<Song> song = [factory getSongType:SongAType];
    [song sing];
    song = [factory getSongType:SongBType];
    [song sing];
    song = [factory getSongType:SongCType];
    [song sing];
}
-(void)factoryMode{
    id<MySongFactory> factory=[SongFactoryA new];
    id<Song> song = [factory getSong];
     [song sing];
    factory=[SongFactoryB new];
    song = [factory getSong];
    [song sing];
    factory=[SongFactoryC new];
    song = [factory getSong];
    [song sing];

}

-(void)abstractFactory{
    id<PersionNeeds> persionNeeds = [PersionNeedsA new];
    id<audio> audio = [persionNeeds getAudio];
    id<Microphone> microphone = [persionNeeds getMicrophone];
    [audio audio];
    [microphone song];
    
    
    persionNeeds = [PersionNeedsB new];
    audio = [persionNeeds getAudio];
    microphone = [persionNeeds getMicrophone];
    [audio audio];
    [microphone song];
    
    persionNeeds = [PersionNeedsC new];
    audio = [persionNeeds getAudio];
    microphone = [persionNeeds getMicrophone];
    [audio audio];
    [microphone song];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
//    [self factoryMode];
    [self abstractFactory];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
