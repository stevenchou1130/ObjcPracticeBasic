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

    [self gotoPractice];
}

// MARK: Enum
// enum 在給值時, 也可以給 index 值, 系統會自動判斷
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

// MARK: goto
// goto: 會強制改變程式執行的順序
// Statement: 標籤
// 如果 goto Statement1, Statement2 的程式也會跑到
-(void)gotoPractice {

    NSLog(@"Start");
    goto Statement1;
    NSLog(@"Ya");

Statement1:
    NSLog(@"1");

Statement2:
    NSLog(@"2");

    NSLog(@"End");
}

@end
