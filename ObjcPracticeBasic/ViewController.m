//
//  ViewController.m
//  ObjcPracticeBasic
//
//  Created by leo.chou on 2018/2/9.
//  Copyright © 2018年 steven.chou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self enumPractice];
}

-(void)enumPractice {
    typedef NS_ENUM(NSUInteger, PlayerState) {
        PlayerStateOff,     // 0
        PlayerStatePlaying, // 1
        PlayerStatePaused   // 2
    };

    PlayerState thePlayState = PlayerStatePaused;   // 2
    switch (thePlayState) {
        case PlayerStateOff:
            NSLog(@"Off");
            break;
        case PlayerStatePlaying:
            NSLog(@"Playing");
            break;
        case PlayerStatePaused:
            NSLog(@"Paused");
            break;
        default:
            NSLog(@"NULL");
            break;
    }
}

@end
